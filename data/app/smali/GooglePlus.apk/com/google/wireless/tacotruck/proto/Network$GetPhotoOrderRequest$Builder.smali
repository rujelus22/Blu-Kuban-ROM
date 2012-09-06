.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7691
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7791
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 7692
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->maybeForceBuilderInitialization()V

    .line 7693
    return-void
.end method

.method static synthetic access$9700()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 1

    .prologue
    .line 7686
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 1

    .prologue
    .line 7698
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7696
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7686
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;
    .registers 3

    .prologue
    .line 7717
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    move-result-object v0

    .line 7718
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7719
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7721
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7686
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;
    .registers 6

    .prologue
    .line 7735
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 7736
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    .line 7737
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7738
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7739
    or-int/lit8 v2, v2, 0x1

    .line 7741
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->access$9902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 7742
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->access$10002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;I)I

    .line 7743
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7686
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7686
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 2

    .prologue
    .line 7702
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7703
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 7704
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    .line 7705
    return-object p0
.end method

.method public clearAlbumIdentifier()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 2

    .prologue
    .line 7827
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 7829
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    .line 7830
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7686
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7686
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 3

    .prologue
    .line 7709
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

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
    .line 7686
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2

    .prologue
    .line 7796
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7686
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7686
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;
    .registers 2

    .prologue
    .line 7713
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumIdentifier()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7793
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

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
    .line 7755
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAlbumIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7815
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 7817
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 7823
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    .line 7824
    return-object p0

    .line 7820
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

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
    .line 7686
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 7686
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

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
    .line 7686
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7764
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 7769
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7771
    :sswitch_d
    return-object p0

    .line 7776
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    .line 7777
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->hasAlbumIdentifier()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 7778
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->getAlbumIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    .line 7780
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7781
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->setAlbumIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    goto :goto_0

    .line 7764
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 7747
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7751
    :cond_6
    :goto_6
    return-object p0

    .line 7748
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->hasAlbumIdentifier()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7749
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->getAlbumIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->mergeAlbumIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    goto :goto_6
.end method

.method public setAlbumIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 7809
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 7811
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    .line 7812
    return-object p0
.end method

.method public setAlbumIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7799
    if-nez p1, :cond_8

    .line 7800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7802
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 7804
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->bitField0_:I

    .line 7805
    return-object p0
.end method
