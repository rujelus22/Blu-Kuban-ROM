.class public final Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:J

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44940
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 44941
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->maybeForceBuilderInitialization()V

    .line 44942
    return-void
.end method

.method static synthetic access$62400(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44935
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$62500()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44935
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44975
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    .line 44976
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 44977
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 44980
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44947
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 44945
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44935
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 3

    .prologue
    .line 44966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    .line 44967
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 44968
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 44970
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44935
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 6

    .prologue
    .line 44984
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 44985
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

    .line 44986
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 44987
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 44988
    or-int/lit8 v2, v2, 0x1

    .line 44990
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->access$62702(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;J)J

    .line 44991
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->access$62802(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;I)I

    .line 44992
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44935
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44935
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 3

    .prologue
    .line 44951
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 44952
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->albumId_:J

    .line 44953
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

    .line 44954
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 3

    .prologue
    .line 45050
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

    .line 45051
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->albumId_:J

    .line 45053
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 44935
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44935
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 3

    .prologue
    .line 44958
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

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
    .line 44935
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 45041
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 44935
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44935
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 2

    .prologue
    .line 44962
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45038
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

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
    .line 45004
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
    .line 44935
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 44935
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

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
    .line 44935
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45012
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 45013
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 45018
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45020
    :sswitch_d
    return-object p0

    .line 45025
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

    .line 45026
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->albumId_:J

    goto :goto_0

    .line 45013
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 44996
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 45000
    :cond_6
    :goto_6
    return-object p0

    .line 44997
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44998
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    goto :goto_6
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 45044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->bitField0_:I

    .line 45045
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->albumId_:J

    .line 45047
    return-object p0
.end method
