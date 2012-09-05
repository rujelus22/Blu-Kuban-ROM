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
    .line 51583
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 51689
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 51584
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->maybeForceBuilderInitialization()V

    .line 51585
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 51590
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 51588
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    .registers 6

    .prologue
    .line 51627
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 51628
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 51629
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 51630
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 51631
    or-int/lit8 v2, v2, 0x1

    .line 51633
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->access$73002(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 51634
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->access$73102(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;I)I

    .line 51635
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 51578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 51578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 51594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 51595
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 51596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 51597
    return-object p0
.end method

.method public clearAlbum()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 51725
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 51727
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 51728
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 51578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 51578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 3

    .prologue
    .line 51601
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
    .line 51578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 51694
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 51578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    .registers 2

    .prologue
    .line 51605
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 51691
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51713
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 51715
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 51721
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 51722
    return-object p0

    .line 51718
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
    .line 51578
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

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
    .line 51578
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
    .line 51661
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 51662
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 51667
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51669
    :sswitch_d
    return-object p0

    .line 51674
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    .line 51675
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->hasAlbum()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 51676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 51678
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 51679
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    goto :goto_0

    .line 51662
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
    .line 51639
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 51643
    :cond_6
    :goto_6
    return-object p0

    .line 51640
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51641
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    goto :goto_6
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51707
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 51709
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 51710
    return-object p0
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51697
    if-nez p1, :cond_8

    .line 51698
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51700
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 51702
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->bitField0_:I

    .line 51703
    return-object p0
.end method
