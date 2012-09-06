.class public final Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

.field private bitField0_:I

.field private photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 45922
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 46052
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 46095
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 45923
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->maybeForceBuilderInitialization()V

    .line 45924
    return-void
.end method

.method static synthetic access$63800(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45917
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$63900()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 1

    .prologue
    .line 45917
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45959
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    .line 45960
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 45961
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 45964
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 1

    .prologue
    .line 45929
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 45927
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 3

    .prologue
    .line 45950
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    .line 45951
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 45952
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 45954
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 6

    .prologue
    .line 45968
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 45969
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 45970
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 45971
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 45972
    or-int/lit8 v2, v2, 0x1

    .line 45974
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->access$64102(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 45975
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 45976
    or-int/lit8 v2, v2, 0x2

    .line 45978
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->access$64202(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 45979
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->access$64302(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;I)I

    .line 45980
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 2

    .prologue
    .line 45933
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 45934
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 45935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 45936
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 45937
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 45938
    return-object p0
.end method

.method public clearAlbum()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 2

    .prologue
    .line 46131
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 46133
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 46134
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 2

    .prologue
    .line 46088
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 46090
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 46091
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 45917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3

    .prologue
    .line 45942
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

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
    .line 45917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 46100
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 45917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2

    .prologue
    .line 45946
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 46057
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 46097
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

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

    .line 46054
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 45995
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->hasPhoto()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 45996
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 46007
    :cond_11
    :goto_11
    return v0

    .line 46001
    :cond_12
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->hasAlbum()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 46002
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 46007
    :cond_22
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 46119
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 46121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 46127
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 46128
    return-object p0

    .line 46124
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    goto :goto_1f
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
    .line 45917
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45917
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

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
    .line 45917
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46015
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 46016
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_46

    .line 46021
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46023
    :sswitch_d
    return-object p0

    .line 46028
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 46029
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->hasPhoto()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 46030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 46032
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 46033
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->setPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    goto :goto_0

    .line 46037
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    .line 46038
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->hasAlbum()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 46039
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 46041
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 46042
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    goto :goto_0

    .line 46016
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 45984
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 45991
    :cond_6
    :goto_6
    return-object p0

    .line 45985
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 45986
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergePhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    .line 45988
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45989
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    goto :goto_6
.end method

.method public mergePhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 46076
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 46078
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 46084
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 46085
    return-object p0

    .line 46081
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    goto :goto_1f
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 46113
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 46115
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 46116
    return-object p0
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46103
    if-nez p1, :cond_8

    .line 46104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46106
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 46108
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 46109
    return-object p0
.end method

.method public setPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 46070
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 46072
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 46073
    return-object p0
.end method

.method public setPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46060
    if-nez p1, :cond_8

    .line 46061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46063
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 46065
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 46066
    return-object p0
.end method
