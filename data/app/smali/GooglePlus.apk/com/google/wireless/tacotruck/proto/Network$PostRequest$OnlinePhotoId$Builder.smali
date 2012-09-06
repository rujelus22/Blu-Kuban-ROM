.class public final Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;",
        "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoIdOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ownerGaiaId_:J

.field private photoId_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11770
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11771
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->maybeForceBuilderInitialization()V

    .line 11772
    return-void
.end method

.method static synthetic access$15100()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 1

    .prologue
    .line 11765
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 1

    .prologue
    .line 11777
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 11775
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 3

    .prologue
    .line 11798
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v0

    .line 11799
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11800
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11802
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 6

    .prologue
    .line 11816
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 11817
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    .line 11818
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11819
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 11820
    or-int/lit8 v2, v2, 0x1

    .line 11822
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->access$15302(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;J)J

    .line 11823
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 11824
    or-int/lit8 v2, v2, 0x2

    .line 11826
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->access$15402(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;J)J

    .line 11827
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->access$15502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;I)I

    .line 11828
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 11781
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11782
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->photoId_:J

    .line 11783
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    .line 11784
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->ownerGaiaId_:J

    .line 11785
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    .line 11786
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 3

    .prologue
    .line 11915
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    .line 11916
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->ownerGaiaId_:J

    .line 11918
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 3

    .prologue
    .line 11894
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    .line 11895
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->photoId_:J

    .line 11897
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 11765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 3

    .prologue
    .line 11790
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

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
    .line 11765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 11765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 2

    .prologue
    .line 11794
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 11906
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 11885
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->photoId_:J

    return-wide v0
.end method

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 11903
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11882
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

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
    .line 11843
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
    .line 11765
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11765
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

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
    .line 11765
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11851
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 11852
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 11857
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11859
    :sswitch_d
    return-object p0

    .line 11864
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    .line 11865
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->photoId_:J

    goto :goto_0

    .line 11869
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    .line 11870
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 11852
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 11832
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 11839
    :cond_6
    :goto_6
    return-object p0

    .line 11833
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11834
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    .line 11836
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11837
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    goto :goto_6
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 11909
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    .line 11910
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->ownerGaiaId_:J

    .line 11912
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 11888
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->bitField0_:I

    .line 11889
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->photoId_:J

    .line 11891
    return-object p0
.end method
