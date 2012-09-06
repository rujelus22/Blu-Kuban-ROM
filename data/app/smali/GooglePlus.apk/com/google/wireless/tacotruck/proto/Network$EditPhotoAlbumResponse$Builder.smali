.class public final Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 52733
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 52839
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 52734
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->maybeForceBuilderInitialization()V

    .line 52735
    return-void
.end method

.method static synthetic access$74300()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 52728
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 52740
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 52738
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    .registers 3

    .prologue
    .line 52759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    .line 52760
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 52761
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 52763
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    .registers 6

    .prologue
    .line 52777
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 52778
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 52779
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 52780
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 52781
    or-int/lit8 v2, v2, 0x1

    .line 52783
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->access$74502(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 52784
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->access$74602(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;I)I

    .line 52785
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 52744
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 52745
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 52746
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 52747
    return-object p0
.end method

.method public clearAlbum()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 52875
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 52877
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 52878
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 52728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 3

    .prologue
    .line 52751
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

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
    .line 52728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 52844
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 52728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    .registers 2

    .prologue
    .line 52755
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52841
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 52797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 52798
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 52800
    const/4 v0, 0x0

    .line 52803
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 52863
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 52865
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 52871
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 52872
    return-object p0

    .line 52868
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

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
    .line 52728
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 52728
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

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
    .line 52728
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52811
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 52812
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 52817
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52819
    :sswitch_d
    return-object p0

    .line 52824
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    .line 52825
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->hasAlbum()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 52826
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 52828
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 52829
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    goto :goto_0

    .line 52812
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 52789
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 52793
    :cond_6
    :goto_6
    return-object p0

    .line 52790
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52791
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    goto :goto_6
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 52857
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 52859
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 52860
    return-object p0
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 52847
    if-nez p1, :cond_8

    .line 52848
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52850
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 52852
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 52853
    return-object p0
.end method
