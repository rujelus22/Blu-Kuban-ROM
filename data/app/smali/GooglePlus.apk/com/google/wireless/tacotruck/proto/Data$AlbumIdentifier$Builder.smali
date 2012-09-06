.class public final Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifierOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;",
        "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifierOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private ownerId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13835
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13963
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->FROM_YOUR_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13836
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->maybeForceBuilderInitialization()V

    .line 13837
    return-void
.end method

.method static synthetic access$18300()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 1

    .prologue
    .line 13830
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 1

    .prologue
    .line 13842
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13840
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 3

    .prologue
    .line 13865
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    .line 13866
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13867
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13869
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 6

    .prologue
    .line 13883
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;-><init>(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 13884
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13885
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13886
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13887
    or-int/lit8 v2, v2, 0x1

    .line 13889
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->access$18502(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13890
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13891
    or-int/lit8 v2, v2, 0x2

    .line 13893
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->ownerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->access$18602(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13894
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 13895
    or-int/lit8 v2, v2, 0x4

    .line 13897
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->access$18702(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;J)J

    .line 13898
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->access$18802(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;I)I

    .line 13899
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3

    .prologue
    .line 13846
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13847
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->FROM_YOUR_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13848
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13850
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13851
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    .line 13852
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13853
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3

    .prologue
    .line 14037
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 14038
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    .line 14040
    return-object p0
.end method

.method public clearOwnerId()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 2

    .prologue
    .line 14011
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 14012
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 14014
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 2

    .prologue
    .line 13980
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13981
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->FROM_YOUR_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13983
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3

    .prologue
    .line 13857
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

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
    .line 13830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 14028
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2

    .prologue
    .line 13861
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13992
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13993
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13994
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13995
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 13998
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    .registers 2

    .prologue
    .line 13968
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    return-object v0
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 14025
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

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

.method public hasOwnerId()Z
    .registers 3

    .prologue
    .line 13989
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13965
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

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
    .line 13917
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
    .line 13830
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 13830
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

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
    .line 13830
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13925
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13926
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 13931
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13933
    :sswitch_d
    return-object p0

    .line 13938
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 13939
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    move-result-object v2

    .line 13940
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    if-eqz v2, :cond_0

    .line 13941
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13942
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    goto :goto_0

    .line 13947
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13948
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    goto :goto_0

    .line 13952
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13953
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    goto :goto_0

    .line 13926
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 13903
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13913
    :cond_6
    :goto_6
    return-object p0

    .line 13904
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13905
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    .line 13907
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->hasOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13908
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->setOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    .line 13910
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13911
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    goto :goto_6
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14031
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 14032
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->albumId_:J

    .line 14034
    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14002
    if-nez p1, :cond_8

    .line 14003
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14005
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 14006
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->ownerId_:Ljava/lang/Object;

    .line 14008
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13971
    if-nez p1, :cond_8

    .line 13972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13974
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->bitField0_:I

    .line 13975
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13977
    return-object p0
.end method
