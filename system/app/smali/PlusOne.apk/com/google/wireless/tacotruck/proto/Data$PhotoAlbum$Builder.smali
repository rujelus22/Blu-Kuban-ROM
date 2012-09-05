.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbumOrBuilder;"
    }
.end annotation


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

.field private entityVersion_:J

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private id_:J

.field private identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

.field private ownerGaiaId_:J

.field private preview_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private streamId_:Ljava/lang/Object;

.field private timestampMsec_:J

.field private title_:Ljava/lang/Object;

.field private totalPhotos_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13900
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 14282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14318
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 14382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 14418
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 14461
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 14550
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 13901
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->maybeForceBuilderInitialization()V

    .line 13902
    return-void
.end method

.method static synthetic access$18200()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 1

    .prologue
    .line 13895
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 1

    .prologue
    .line 13907
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePreviewIsMutable()V
    .registers 3

    .prologue
    .line 14464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 14465
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 14466
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14468
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13905
    return-void
.end method


# virtual methods
.method public addAllPreview(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;"
        }
    .end annotation

    .prologue
    .line 14531
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 14532
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14534
    return-object p0
.end method

.method public addPreview(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 14524
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 14525
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14527
    return-object p0
.end method

.method public addPreview(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14507
    if-nez p2, :cond_8

    .line 14508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14510
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 14511
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14513
    return-object p0
.end method

.method public addPreview(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 14517
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 14518
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14520
    return-object p0
.end method

.method public addPreview(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14497
    if-nez p1, :cond_8

    .line 14498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14500
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 14501
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14503
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 3

    .prologue
    .line 13948
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    .line 13949
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13950
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13952
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13895
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 6

    .prologue
    .line 13966
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 13967
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13968
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13969
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13970
    or-int/lit8 v2, v2, 0x1

    .line 13972
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$18402(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J

    .line 13973
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13974
    or-int/lit8 v2, v2, 0x2

    .line 13976
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$18502(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13977
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 13978
    or-int/lit8 v2, v2, 0x4

    .line 13980
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$18602(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)I

    .line 13981
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 13982
    or-int/lit8 v2, v2, 0x8

    .line 13984
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$18702(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J

    .line 13985
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 13986
    or-int/lit8 v2, v2, 0x10

    .line 13988
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$18802(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13989
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 13990
    or-int/lit8 v2, v2, 0x20

    .line 13992
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$18902(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 13993
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 13994
    or-int/lit8 v2, v2, 0x40

    .line 13996
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19002(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J

    .line 13997
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 13998
    or-int/lit16 v2, v2, 0x80

    .line 14000
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19102(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14001
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 14002
    or-int/lit16 v2, v2, 0x100

    .line 14004
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19202(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 14005
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_91

    .line 14006
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 14007
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14009
    :cond_91
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19302(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/util/List;)Ljava/util/List;

    .line 14010
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9e

    .line 14011
    or-int/lit16 v2, v2, 0x200

    .line 14013
    :cond_9e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19402(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 14014
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_ab

    .line 14015
    or-int/lit16 v2, v2, 0x400

    .line 14017
    :cond_ab
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19502(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J

    .line 14018
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19602(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)I

    .line 14019
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13895
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13895
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 13911
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13912
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    .line 13913
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 13915
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13916
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    .line 13917
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13918
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    .line 13919
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13921
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13922
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 13923
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13924
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    .line 13925
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 13927
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13928
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 13929
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13930
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 13931
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13932
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 13933
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13934
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    .line 13935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 13936
    return-object p0
.end method

.method public clearAudience()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 14454
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 14456
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14457
    return-object p0
.end method

.method public clearCover()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 14354
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 14356
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14357
    return-object p0
.end method

.method public clearEntityVersion()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 14607
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14608
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    .line 14610
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 14306
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14307
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14309
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 14197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14198
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    .line 14200
    return-object p0
.end method

.method public clearIdentifier()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 14586
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 14588
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14589
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 14275
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    .line 14278
    return-object p0
.end method

.method public clearPreview()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 14537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 14538
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14540
    return-object p0
.end method

.method public clearStreamId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 14406
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14407
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 14409
    return-object p0
.end method

.method public clearTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 14375
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14376
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    .line 14378
    return-object p0
.end method

.method public clearTitle()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 14228
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14229
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 14231
    return-object p0
.end method

.method public clearTotalPhotos()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 14254
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14255
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    .line 14257
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13895
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13895
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 13940
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

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
    .line 13895
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 14423
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 14323
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13895
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13895
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 13944
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getEntityVersion()J
    .registers 3

    .prologue
    .line 14598
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    return-wide v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14287
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14288
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14289
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14290
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14293
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

.method public getId()J
    .registers 3

    .prologue
    .line 14188
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    return-wide v0
.end method

.method public getIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2

    .prologue
    .line 14555
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 14266
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPreview(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 14477
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPreviewCount()I
    .registers 2

    .prologue
    .line 14474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreviewList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14471
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14387
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 14388
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14389
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14390
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 14393
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

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 14366
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14209
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 14210
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14211
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14212
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 14215
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

.method public getTotalPhotos()I
    .registers 2

    .prologue
    .line 14245
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    return v0
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    .line 14420
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCover()Z
    .registers 3

    .prologue
    .line 14320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEntityVersion()Z
    .registers 3

    .prologue
    .line 14595
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 14284
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14185
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIdentifier()Z
    .registers 3

    .prologue
    .line 14552
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 14263
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 14384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTimestampMsec()Z
    .registers 3

    .prologue
    .line 14363
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 14206
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

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

.method public hasTotalPhotos()Z
    .registers 3

    .prologue
    .line 14242
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

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

.method public mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14442
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 14444
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 14450
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14451
    return-object p0

    .line 14447
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    goto :goto_20
.end method

.method public mergeCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14342
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 14344
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 14350
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14351
    return-object p0

    .line 14347
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    goto :goto_20
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
    .line 13895
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

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
    .line 13895
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14091
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 14092
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_de

    .line 14097
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14099
    :sswitch_d
    return-object p0

    .line 14104
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14105
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    goto :goto_0

    .line 14109
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14110
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 14114
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    goto :goto_0

    .line 14119
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14120
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 14124
    :sswitch_42
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 14125
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->hasCover()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 14126
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 14128
    :cond_53
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14129
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto :goto_0

    .line 14133
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_5e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14134
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    goto :goto_0

    .line 14138
    :sswitch_6b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14139
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 14143
    :sswitch_78
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 14144
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->hasAudience()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 14145
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 14147
    :cond_89
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14148
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto/16 :goto_0

    .line 14152
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_95
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 14153
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14154
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->addPreview(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto/16 :goto_0

    .line 14158
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_a5
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14159
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 14163
    :sswitch_b3
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    .line 14164
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->hasIdentifier()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 14165
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    .line 14167
    :cond_c4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14168
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto/16 :goto_0

    .line 14172
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    :sswitch_d0
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14173
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    goto/16 :goto_0

    .line 14092
    :sswitch_data_de
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
        0x30 -> :sswitch_5e
        0x3a -> :sswitch_6b
        0x42 -> :sswitch_78
        0x4a -> :sswitch_95
        0x52 -> :sswitch_a5
        0x5a -> :sswitch_b3
        0x60 -> :sswitch_d0
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 14023
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14067
    :cond_6
    :goto_6
    return-object p0

    .line 14024
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14025
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14027
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14028
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14030
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTotalPhotos()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 14031
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTotalPhotos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setTotalPhotos(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14033
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 14034
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14036
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 14037
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14039
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 14040
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14042
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 14043
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14045
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 14046
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14048
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasAudience()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 14049
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14051
    :cond_7c
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19300(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 14052
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 14053
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19300(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 14054
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14061
    :cond_9a
    :goto_9a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasIdentifier()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 14062
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 14064
    :cond_a7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasEntityVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14065
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getEntityVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto/16 :goto_6

    .line 14056
    :cond_b6
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 14057
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19300(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9a
.end method

.method public mergeIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14574
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 14576
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 14582
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14583
    return-object p0

    .line 14579
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    goto :goto_20
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 14436
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 14438
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14439
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14426
    if-nez p1, :cond_8

    .line 14427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14429
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 14431
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14432
    return-object p0
.end method

.method public setCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 14336
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 14338
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14339
    return-object p0
.end method

.method public setCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14326
    if-nez p1, :cond_8

    .line 14327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14329
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 14331
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14332
    return-object p0
.end method

.method public setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14601
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14602
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    .line 14604
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14297
    if-nez p1, :cond_8

    .line 14298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14300
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14301
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14303
    return-object p0
.end method

.method public setId(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14191
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14192
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    .line 14194
    return-object p0
.end method

.method public setIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 14568
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 14570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14571
    return-object p0
.end method

.method public setIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14558
    if-nez p1, :cond_8

    .line 14559
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14561
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 14563
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14564
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14269
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14270
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    .line 14272
    return-object p0
.end method

.method public setPreview(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 14491
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 14492
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14494
    return-object p0
.end method

.method public setPreview(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14481
    if-nez p2, :cond_8

    .line 14482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14484
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 14485
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14487
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14397
    if-nez p1, :cond_8

    .line 14398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14400
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14401
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 14403
    return-object p0
.end method

.method public setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14369
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14370
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    .line 14372
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14219
    if-nez p1, :cond_8

    .line 14220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14222
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14223
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 14225
    return-object p0
.end method

.method public setTotalPhotos(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14248
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 14249
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    .line 14251
    return-object p0
.end method
