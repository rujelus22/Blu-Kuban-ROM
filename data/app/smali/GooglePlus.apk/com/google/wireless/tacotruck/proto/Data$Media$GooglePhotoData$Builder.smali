.class public final Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;",
        "Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoDataOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private mediaTag_:J

.field private ownerFocusObfuscatedId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6706
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6707
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->maybeForceBuilderInitialization()V

    .line 6708
    return-void
.end method

.method static synthetic access$8100()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 1

    .prologue
    .line 6701
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 1

    .prologue
    .line 6713
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6711
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 3

    .prologue
    .line 6736
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    .line 6737
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6738
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6740
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 6

    .prologue
    .line 6754
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 6755
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6756
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6757
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6758
    or-int/lit8 v2, v2, 0x1

    .line 6760
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->access$8302(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;J)J

    .line 6761
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 6762
    or-int/lit8 v2, v2, 0x2

    .line 6764
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->ownerFocusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->access$8402(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6765
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 6766
    or-int/lit8 v2, v2, 0x4

    .line 6768
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->access$8502(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;J)J

    .line 6769
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->access$8602(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;I)I

    .line 6770
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 6717
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6718
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    .line 6719
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6720
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6721
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6722
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->albumId_:J

    .line 6723
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6724
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 3

    .prologue
    .line 6901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6902
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->albumId_:J

    .line 6904
    return-object p0
.end method

.method public clearMediaTag()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 3

    .prologue
    .line 6844
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6845
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    .line 6847
    return-object p0
.end method

.method public clearOwnerFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 2

    .prologue
    .line 6875
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6876
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getOwnerFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6878
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 3

    .prologue
    .line 6728
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

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
    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 6892
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 2

    .prologue
    .line 6732
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 6835
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    return-wide v0
.end method

.method public getOwnerFocusObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6856
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6857
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6858
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6859
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6862
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

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 6889
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

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

.method public hasMediaTag()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6832
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOwnerFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 6853
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 6788
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
    .line 6701
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 6701
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

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
    .line 6701
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6796
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 6797
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 6802
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6804
    :sswitch_d
    return-object p0

    .line 6809
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6810
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    goto :goto_0

    .line 6814
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6815
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 6819
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6820
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->albumId_:J

    goto :goto_0

    .line 6797
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 6774
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6784
    :cond_6
    :goto_6
    return-object p0

    .line 6775
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->hasMediaTag()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6776
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getMediaTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->setMediaTag(J)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    .line 6778
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->hasOwnerFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6779
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getOwnerFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->setOwnerFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    .line 6781
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6782
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    goto :goto_6
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6896
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->albumId_:J

    .line 6898
    return-object p0
.end method

.method public setMediaTag(J)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6838
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6839
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    .line 6841
    return-object p0
.end method

.method public setOwnerFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6866
    if-nez p1, :cond_8

    .line 6867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6869
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6870
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6872
    return-object p0
.end method
