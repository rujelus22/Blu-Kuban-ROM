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

.field private eventIdentifier_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;",
            ">;"
        }
    .end annotation
.end field

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

.field private privateInviteToken_:Ljava/lang/Object;

.field private streamId_:Ljava/lang/Object;

.field private timestampMsec_:J

.field private title_:Ljava/lang/Object;

.field private totalPhotos_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15036
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 15455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15491
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 15555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 15591
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 15634
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 15723
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 15787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->privateInviteToken_:Ljava/lang/Object;

    .line 15823
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    .line 15037
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->maybeForceBuilderInitialization()V

    .line 15038
    return-void
.end method

.method static synthetic access$19600()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 1

    .prologue
    .line 15031
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 1

    .prologue
    .line 15043
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEventIdentifierIsMutable()V
    .registers 3

    .prologue
    .line 15826
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_17

    .line 15827
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    .line 15828
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15830
    :cond_17
    return-void
.end method

.method private ensurePreviewIsMutable()V
    .registers 3

    .prologue
    .line 15637
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 15638
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 15639
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15641
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15041
    return-void
.end method


# virtual methods
.method public addAllEventIdentifier(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;"
        }
    .end annotation

    .prologue
    .line 15893
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensureEventIdentifierIsMutable()V

    .line 15894
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15896
    return-object p0
.end method

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
    .line 15704
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 15705
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15707
    return-object p0
.end method

.method public addEventIdentifier(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15886
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensureEventIdentifierIsMutable()V

    .line 15887
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15889
    return-object p0
.end method

.method public addEventIdentifier(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15869
    if-nez p2, :cond_8

    .line 15870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15872
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensureEventIdentifierIsMutable()V

    .line 15873
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15875
    return-object p0
.end method

.method public addEventIdentifier(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 15879
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensureEventIdentifierIsMutable()V

    .line 15880
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15882
    return-object p0
.end method

.method public addEventIdentifier(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15859
    if-nez p1, :cond_8

    .line 15860
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15862
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensureEventIdentifierIsMutable()V

    .line 15863
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15865
    return-object p0
.end method

.method public addPreview(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15697
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 15698
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15700
    return-object p0
.end method

.method public addPreview(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15680
    if-nez p2, :cond_8

    .line 15681
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15683
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 15684
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15686
    return-object p0
.end method

.method public addPreview(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 15690
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 15691
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15693
    return-object p0
.end method

.method public addPreview(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15670
    if-nez p1, :cond_8

    .line 15671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15673
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 15674
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15676
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 3

    .prologue
    .line 15088
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    .line 15089
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15090
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15092
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 6

    .prologue
    .line 15106
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 15107
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15108
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15109
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15110
    or-int/lit8 v2, v2, 0x1

    .line 15112
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19802(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J

    .line 15113
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 15114
    or-int/lit8 v2, v2, 0x2

    .line 15116
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$19902(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15117
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 15118
    or-int/lit8 v2, v2, 0x4

    .line 15120
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20002(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)I

    .line 15121
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 15122
    or-int/lit8 v2, v2, 0x8

    .line 15124
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20102(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J

    .line 15125
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 15126
    or-int/lit8 v2, v2, 0x10

    .line 15128
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20202(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15129
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 15130
    or-int/lit8 v2, v2, 0x20

    .line 15132
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20302(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 15133
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 15134
    or-int/lit8 v2, v2, 0x40

    .line 15136
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20402(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J

    .line 15137
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 15138
    or-int/lit16 v2, v2, 0x80

    .line 15140
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20502(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15141
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 15142
    or-int/lit16 v2, v2, 0x100

    .line 15144
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20602(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 15145
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_91

    .line 15146
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 15147
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15149
    :cond_91
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20702(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/util/List;)Ljava/util/List;

    .line 15150
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9e

    .line 15151
    or-int/lit16 v2, v2, 0x200

    .line 15153
    :cond_9e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20802(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 15154
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_ab

    .line 15155
    or-int/lit16 v2, v2, 0x400

    .line 15157
    :cond_ab
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20902(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J

    .line 15158
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b8

    .line 15159
    or-int/lit16 v2, v2, 0x800

    .line 15161
    :cond_b8
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->privateInviteToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->privateInviteToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$21002(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15162
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d3

    .line 15163
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    .line 15164
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15166
    :cond_d3
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$21102(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/util/List;)Ljava/util/List;

    .line 15167
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$21202(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)I

    .line 15168
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 15047
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15048
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    .line 15049
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15050
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 15051
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15052
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    .line 15053
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15054
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    .line 15055
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15056
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15057
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15058
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 15059
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15060
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    .line 15061
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 15063
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15064
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 15065
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 15067
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15068
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 15069
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15070
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    .line 15071
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->privateInviteToken_:Ljava/lang/Object;

    .line 15073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15074
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    .line 15075
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15076
    return-object p0
.end method

.method public clearAudience()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15627
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 15629
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15630
    return-object p0
.end method

.method public clearCover()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15527
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 15529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15530
    return-object p0
.end method

.method public clearEntityVersion()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 15780
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15781
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    .line 15783
    return-object p0
.end method

.method public clearEventIdentifier()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15899
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    .line 15900
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15902
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15479
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15480
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15482
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 15370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15371
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    .line 15373
    return-object p0
.end method

.method public clearIdentifier()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15759
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 15761
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15762
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 15448
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15449
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    .line 15451
    return-object p0
.end method

.method public clearPreview()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15710
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 15711
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15713
    return-object p0
.end method

.method public clearPrivateInviteToken()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15811
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15812
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPrivateInviteToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->privateInviteToken_:Ljava/lang/Object;

    .line 15814
    return-object p0
.end method

.method public clearStreamId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15579
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15580
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 15582
    return-object p0
.end method

.method public clearTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 15548
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15549
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    .line 15551
    return-object p0
.end method

.method public clearTitle()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15401
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15402
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 15404
    return-object p0
.end method

.method public clearTotalPhotos()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 15427
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15428
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    .line 15430
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 15080
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
    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 15596
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 15496
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 15084
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getEntityVersion()J
    .registers 3

    .prologue
    .line 15771
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    return-wide v0
.end method

.method public getEventIdentifier(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
    .registers 3
    .parameter "index"

    .prologue
    .line 15839
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    return-object v0
.end method

.method public getEventIdentifierCount()I
    .registers 2

    .prologue
    .line 15836
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventIdentifierList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15833
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15460
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15461
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15462
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15463
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15466
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
    .line 15361
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    return-wide v0
.end method

.method public getIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2

    .prologue
    .line 15728
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 15439
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPreview(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 15650
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPreviewCount()I
    .registers 2

    .prologue
    .line 15647
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
    .line 15644
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateInviteToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15792
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->privateInviteToken_:Ljava/lang/Object;

    .line 15793
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15794
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15795
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->privateInviteToken_:Ljava/lang/Object;

    .line 15798
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

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15560
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 15561
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15562
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15563
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 15566
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
    .line 15539
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15382
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 15383
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15384
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15385
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 15388
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
    .line 15418
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    return v0
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    .line 15593
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
    .line 15493
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
    .line 15768
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
    .line 15457
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

    .line 15358
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
    .line 15725
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
    .line 15436
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

.method public hasPrivateInviteToken()Z
    .registers 3

    .prologue
    .line 15789
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

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
    .line 15557
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
    .line 15536
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
    .line 15379
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
    .line 15415
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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 15233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->hasCover()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 15234
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_12

    .line 15245
    :cond_11
    :goto_11
    return v1

    .line 15239
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getPreviewCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 15240
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getPreview(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 15239
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 15245
    :cond_26
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15615
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 15617
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 15623
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15624
    return-object p0

    .line 15620
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    goto :goto_20
.end method

.method public mergeCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15515
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 15517
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 15523
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15524
    return-object p0

    .line 15520
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
    .line 15031
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 15031
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

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
    .line 15031
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
    .line 15253
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15254
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_fc

    .line 15259
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15261
    :sswitch_d
    return-object p0

    .line 15266
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15267
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    goto :goto_0

    .line 15271
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15272
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 15276
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15277
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    goto :goto_0

    .line 15281
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15282
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 15286
    :sswitch_42
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 15287
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->hasCover()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 15288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 15290
    :cond_53
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15291
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto :goto_0

    .line 15295
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_5e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15296
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    goto :goto_0

    .line 15300
    :sswitch_6b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15301
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 15305
    :sswitch_78
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 15306
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->hasAudience()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 15307
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 15309
    :cond_89
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15310
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto/16 :goto_0

    .line 15314
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_95
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 15315
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15316
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->addPreview(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto/16 :goto_0

    .line 15320
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_a5
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15321
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 15325
    :sswitch_b3
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    .line 15326
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->hasIdentifier()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 15327
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->getIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    .line 15329
    :cond_c4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15330
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto/16 :goto_0

    .line 15334
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    :sswitch_d0
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    goto/16 :goto_0

    .line 15339
    :sswitch_de
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15340
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->privateInviteToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 15344
    :sswitch_ec
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    .line 15345
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15346
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->addEventIdentifier(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    goto/16 :goto_0

    .line 15254
    :sswitch_data_fc
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
        0x6a -> :sswitch_de
        0x72 -> :sswitch_ec
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 15172
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15229
    :cond_6
    :goto_6
    return-object p0

    .line 15173
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15174
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15176
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15177
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15179
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTotalPhotos()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 15180
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTotalPhotos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setTotalPhotos(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15182
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 15183
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15185
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 15186
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15188
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 15189
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15191
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 15192
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15194
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 15195
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15197
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasAudience()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 15198
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15200
    :cond_7c
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20700(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 15201
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 15202
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20700(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    .line 15203
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15210
    :cond_9a
    :goto_9a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasIdentifier()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 15211
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15213
    :cond_a7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasEntityVersion()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 15214
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getEntityVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15216
    :cond_b4
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasPrivateInviteToken()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 15217
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPrivateInviteToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->setPrivateInviteToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15219
    :cond_c1
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$21100(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15220
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 15221
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$21100(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    .line 15222
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    goto/16 :goto_6

    .line 15205
    :cond_e1
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 15206
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$20700(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9a

    .line 15224
    :cond_ee
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensureEventIdentifierIsMutable()V

    .line 15225
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->eventIdentifier_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->access$21100(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15747
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 15749
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 15755
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15756
    return-object p0

    .line 15752
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    goto :goto_20
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 15609
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 15611
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15612
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15599
    if-nez p1, :cond_8

    .line 15600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15602
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 15604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15605
    return-object p0
.end method

.method public setCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 15509
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 15511
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15512
    return-object p0
.end method

.method public setCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15499
    if-nez p1, :cond_8

    .line 15500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15502
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 15504
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15505
    return-object p0
.end method

.method public setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15774
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15775
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->entityVersion_:J

    .line 15777
    return-object p0
.end method

.method public setEventIdentifier(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15853
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensureEventIdentifierIsMutable()V

    .line 15854
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15856
    return-object p0
.end method

.method public setEventIdentifier(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15843
    if-nez p2, :cond_8

    .line 15844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15846
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensureEventIdentifierIsMutable()V

    .line 15847
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->eventIdentifier_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15849
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15470
    if-nez p1, :cond_8

    .line 15471
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15473
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15476
    return-object p0
.end method

.method public setId(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15364
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15365
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->id_:J

    .line 15367
    return-object p0
.end method

.method public setIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 15741
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 15743
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15744
    return-object p0
.end method

.method public setIdentifier(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15731
    if-nez p1, :cond_8

    .line 15732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15734
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 15736
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15737
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15442
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15443
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ownerGaiaId_:J

    .line 15445
    return-object p0
.end method

.method public setPreview(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15664
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 15665
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15667
    return-object p0
.end method

.method public setPreview(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15654
    if-nez p2, :cond_8

    .line 15655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15657
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->ensurePreviewIsMutable()V

    .line 15658
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->preview_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15660
    return-object p0
.end method

.method public setPrivateInviteToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15802
    if-nez p1, :cond_8

    .line 15803
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15805
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15806
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->privateInviteToken_:Ljava/lang/Object;

    .line 15808
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15570
    if-nez p1, :cond_8

    .line 15571
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15573
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15574
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->streamId_:Ljava/lang/Object;

    .line 15576
    return-object p0
.end method

.method public setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15542
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15543
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->timestampMsec_:J

    .line 15545
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15392
    if-nez p1, :cond_8

    .line 15393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15395
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15396
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->title_:Ljava/lang/Object;

    .line 15398
    return-object p0
.end method

.method public setTotalPhotos(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15421
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->bitField0_:I

    .line 15422
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->totalPhotos_:I

    .line 15424
    return-object p0
.end method
