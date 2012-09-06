.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxCoverCountPerSection_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39678
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 39679
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maybeForceBuilderInitialization()V

    .line 39680
    return-void
.end method

.method static synthetic access$54900()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 1

    .prologue
    .line 39673
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 1

    .prologue
    .line 39685
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 39683
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    .registers 3

    .prologue
    .line 39704
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    .line 39705
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 39706
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 39708
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    .registers 6

    .prologue
    .line 39722
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 39723
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 39724
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 39725
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 39726
    or-int/lit8 v2, v2, 0x1

    .line 39728
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->maxCoverCountPerSection_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->access$55102(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;I)I

    .line 39729
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->access$55202(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;I)I

    .line 39730
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 2

    .prologue
    .line 39689
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 39690
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    .line 39691
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 39692
    return-object p0
.end method

.method public clearMaxCoverCountPerSection()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 2

    .prologue
    .line 39788
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 39789
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    .line 39791
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 39673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 3

    .prologue
    .line 39696
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

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
    .line 39673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 39673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    .registers 2

    .prologue
    .line 39700
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCoverCountPerSection()I
    .registers 2

    .prologue
    .line 39779
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    return v0
.end method

.method public hasMaxCoverCountPerSection()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39776
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

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
    .line 39742
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
    .line 39673
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39673
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

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
    .line 39673
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39750
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 39751
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 39756
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39758
    :sswitch_d
    return-object p0

    .line 39763
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 39764
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    goto :goto_0

    .line 39751
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 39734
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 39738
    :cond_6
    :goto_6
    return-object p0

    .line 39735
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->hasMaxCoverCountPerSection()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39736
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->getMaxCoverCountPerSection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->setMaxCoverCountPerSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    goto :goto_6
.end method

.method public setMaxCoverCountPerSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39782
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 39783
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    .line 39785
    return-object p0
.end method
