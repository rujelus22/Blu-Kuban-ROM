.class public final Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MediaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Media;",
        "Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$MediaOrBuilder;"
    }
.end annotation


# instance fields
.field private albumArtist_:Ljava/lang/Object;

.field private album_:Ljava/lang/Object;

.field private bitField0_:I

.field private contentHtml_:Ljava/lang/Object;

.field private count_:I

.field private descriptionHtml_:Ljava/lang/Object;

.field private gadgetName_:Ljava/lang/Object;

.field private gadgetTitle_:Ljava/lang/Object;

.field private photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

.field private playerHeight_:I

.field private playerUrl_:Ljava/lang/Object;

.field private playerWidth_:I

.field private thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

.field private thumbnailUrl_:Ljava/lang/Object;

.field private truncated_:Z

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field private url_:Ljava/lang/Object;

.field private videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6892
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7228
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 7252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 7396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 7432
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 7519
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 7562
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 7586
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 7622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 7658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 7694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 6893
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->maybeForceBuilderInitialization()V

    .line 6894
    return-void
.end method

.method static synthetic access$7900(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6887
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 1

    .prologue
    .line 6887
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6959
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    .line 6960
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 6961
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 6964
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 1

    .prologue
    .line 6899
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6897
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 3

    .prologue
    .line 6950
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    .line 6951
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6952
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6954
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 8

    .prologue
    const/high16 v6, 0x1

    const v5, 0x8000

    .line 6968
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Media;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 6969
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Media;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6970
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6971
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 6972
    or-int/lit8 v2, v2, 0x1

    .line 6974
    :cond_15
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$8202(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6975
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 6976
    or-int/lit8 v2, v2, 0x2

    .line 6978
    :cond_21
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$8302(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6979
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2d

    .line 6980
    or-int/lit8 v2, v2, 0x4

    .line 6982
    :cond_2d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$8402(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6983
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3a

    .line 6984
    or-int/lit8 v2, v2, 0x8

    .line 6986
    :cond_3a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$8502(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6987
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_47

    .line 6988
    or-int/lit8 v2, v2, 0x10

    .line 6990
    :cond_47
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$8602(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6991
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_54

    .line 6992
    or-int/lit8 v2, v2, 0x20

    .line 6994
    :cond_54
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$8702(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6995
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_61

    .line 6996
    or-int/lit8 v2, v2, 0x40

    .line 6998
    :cond_61
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$8802(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 6999
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_6e

    .line 7000
    or-int/lit16 v2, v2, 0x80

    .line 7002
    :cond_6e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$8902(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I

    .line 7003
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_7b

    .line 7004
    or-int/lit16 v2, v2, 0x100

    .line 7006
    :cond_7b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9002(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I

    .line 7007
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_88

    .line 7008
    or-int/lit16 v2, v2, 0x200

    .line 7010
    :cond_88
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9102(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I

    .line 7011
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_95

    .line 7012
    or-int/lit16 v2, v2, 0x400

    .line 7014
    :cond_95
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9202(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 7015
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_a2

    .line 7016
    or-int/lit16 v2, v2, 0x800

    .line 7018
    :cond_a2
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9302(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 7019
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_af

    .line 7020
    or-int/lit16 v2, v2, 0x1000

    .line 7022
    :cond_af
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9402(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7023
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_bc

    .line 7024
    or-int/lit16 v2, v2, 0x2000

    .line 7026
    :cond_bc
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9502(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7027
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_c9

    .line 7028
    or-int/lit16 v2, v2, 0x4000

    .line 7030
    :cond_c9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9602(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7031
    and-int v3, v0, v5

    if-ne v3, v5, :cond_d3

    .line 7032
    or-int/2addr v2, v5

    .line 7034
    :cond_d3
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9702(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7035
    and-int v3, v0, v6

    if-ne v3, v6, :cond_dd

    .line 7036
    or-int/2addr v2, v6

    .line 7038
    :cond_dd
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9802(Lcom/google/wireless/tacotruck/proto/Data$Media;Z)Z

    .line 7039
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9902(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I

    .line 7040
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6903
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6904
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6905
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6906
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 6907
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 6909
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6910
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 6911
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6912
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 6913
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 6915
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6916
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 6917
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6918
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    .line 6919
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6920
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    .line 6921
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6922
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    .line 6923
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6924
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 6925
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6926
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 6927
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 6929
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 6931
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 6933
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 6935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6936
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    .line 6937
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 6938
    return-object p0
.end method

.method public clearAlbum()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7610
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7611
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 7613
    return-object p0
.end method

.method public clearAlbumArtist()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7646
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7647
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 7649
    return-object p0
.end method

.method public clearContentHtml()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7312
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7313
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7315
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7470
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7471
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    .line 7473
    return-object p0
.end method

.method public clearDescriptionHtml()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7385
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 7387
    return-object p0
.end method

.method public clearGadgetName()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7683
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 7685
    return-object p0
.end method

.method public clearGadgetTitle()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3

    .prologue
    .line 7718
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7719
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 7721
    return-object p0
.end method

.method public clearPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7555
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 7557
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7558
    return-object p0
.end method

.method public clearPlayerHeight()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7513
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    .line 7515
    return-object p0
.end method

.method public clearPlayerUrl()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7420
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7421
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 7423
    return-object p0
.end method

.method public clearPlayerWidth()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7491
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7492
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    .line 7494
    return-object p0
.end method

.method public clearThumbnailUrl()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7348
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7349
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7351
    return-object p0
.end method

.method public clearThumbnailUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7579
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7580
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 7582
    return-object p0
.end method

.method public clearTruncated()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3

    .prologue
    .line 7744
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    .line 7747
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7245
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7246
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 7248
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7276
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7277
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7279
    return-object p0
.end method

.method public clearVideoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7449
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7450
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 7452
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3

    .prologue
    .line 6942
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

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
    .line 6887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7591
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 7592
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7593
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7594
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 7597
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

.method public getAlbumArtist()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7627
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 7628
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7629
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7630
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 7633
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

.method public getContentHtml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7293
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7294
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7295
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7296
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7299
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

.method public getCount()I
    .registers 2

    .prologue
    .line 7461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 2

    .prologue
    .line 6946
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7365
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 7366
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7367
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7368
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 7371
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

.method public getGadgetName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7663
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 7664
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7665
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7666
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 7669
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

.method public getGadgetTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7699
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 7700
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7701
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7702
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 7705
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

.method public getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 2

    .prologue
    .line 7524
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object v0
.end method

.method public getPlayerHeight()I
    .registers 2

    .prologue
    .line 7503
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    return v0
.end method

.method public getPlayerUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7401
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 7402
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7403
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7404
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 7407
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

.method public getPlayerWidth()I
    .registers 2

    .prologue
    .line 7482
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7329
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7330
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7331
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7332
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7335
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

.method public getThumbnailUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2

    .prologue
    .line 7567
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method

.method public getTruncated()Z
    .registers 2

    .prologue
    .line 7735
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 2

    .prologue
    .line 7233
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7257
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7258
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7259
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7260
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7263
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

.method public getVideoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    .registers 2

    .prologue
    .line 7437
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    return-object v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 7588
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasAlbumArtist()Z
    .registers 3

    .prologue
    .line 7624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasContentHtml()Z
    .registers 3

    .prologue
    .line 7290
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasCount()Z
    .registers 3

    .prologue
    .line 7458
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasDescriptionHtml()Z
    .registers 3

    .prologue
    .line 7362
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasGadgetName()Z
    .registers 3

    .prologue
    .line 7660
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasGadgetTitle()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 7696
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPhotoData()Z
    .registers 3

    .prologue
    .line 7521
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasPlayerHeight()Z
    .registers 3

    .prologue
    .line 7500
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPlayerUrl()Z
    .registers 3

    .prologue
    .line 7398
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasPlayerWidth()Z
    .registers 3

    .prologue
    .line 7479
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasThumbnailUrl()Z
    .registers 3

    .prologue
    .line 7326
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasThumbnailUrlFormat()Z
    .registers 3

    .prologue
    .line 7564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasTruncated()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 7732
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/2addr v0, v1

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

    .line 7230
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 7254
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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

.method public hasVideoMediaDisplay()Z
    .registers 3

    .prologue
    .line 7434
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

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
    .line 6887
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

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
    .line 6887
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 7109
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_11a

    .line 7114
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7116
    :sswitch_d
    return-object p0

    .line 7121
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7122
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v3

    .line 7123
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    if-eqz v3, :cond_0

    .line 7124
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7125
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_0

    .line 7130
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 7135
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7136
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 7140
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 7145
    :sswitch_48
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7146
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 7150
    :sswitch_55
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7151
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 7155
    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7156
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    move-result-object v3

    .line 7157
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    if-eqz v3, :cond_0

    .line 7158
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7159
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    goto :goto_0

    .line 7164
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    :sswitch_75
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7165
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    goto/16 :goto_0

    .line 7169
    :sswitch_83
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7170
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    goto/16 :goto_0

    .line 7174
    :sswitch_91
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7175
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    goto/16 :goto_0

    .line 7179
    :sswitch_9f
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v1

    .line 7180
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->hasPhotoData()Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 7181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    .line 7183
    :cond_b0
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7184
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    goto/16 :goto_0

    .line 7188
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    :sswitch_bc
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7189
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    move-result-object v3

    .line 7190
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    if-eqz v3, :cond_0

    .line 7191
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7192
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    goto/16 :goto_0

    .line 7197
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    :sswitch_d0
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7198
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7202
    :sswitch_de
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7203
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7207
    :sswitch_ec
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7208
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7212
    :sswitch_fa
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7213
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7217
    :sswitch_10a
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7218
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    goto/16 :goto_0

    .line 7109
    nop

    :sswitch_data_11a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x32 -> :sswitch_55
        0x38 -> :sswitch_62
        0x40 -> :sswitch_75
        0x48 -> :sswitch_83
        0x50 -> :sswitch_91
        0x5a -> :sswitch_9f
        0x60 -> :sswitch_bc
        0x6a -> :sswitch_d0
        0x72 -> :sswitch_de
        0x7a -> :sswitch_ec
        0x82 -> :sswitch_fa
        0x88 -> :sswitch_10a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 7044
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7096
    :cond_6
    :goto_6
    return-object p0

    .line 7045
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7046
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7048
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7049
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7051
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasContentHtml()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 7052
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7054
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 7055
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7057
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 7058
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7060
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPlayerUrl()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 7061
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPlayerUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7063
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasVideoMediaDisplay()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 7064
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getVideoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setVideoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7066
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 7067
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setCount(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7069
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPlayerWidth()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 7070
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPlayerWidth(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7072
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPlayerHeight()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 7073
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPlayerHeight(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7075
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPhotoData()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 7076
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergePhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7078
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrlFormat()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 7079
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setThumbnailUrlFormat(Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7081
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 7082
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setAlbum(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7084
    :cond_b0
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasAlbumArtist()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 7085
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setAlbumArtist(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7087
    :cond_bd
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasGadgetName()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 7088
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setGadgetName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7090
    :cond_ca
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasGadgetTitle()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 7091
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setGadgetTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7093
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasTruncated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7094
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getTruncated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setTruncated(Z)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7543
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 7545
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 7551
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7552
    return-object p0

    .line 7548
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    goto :goto_20
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7601
    if-nez p1, :cond_8

    .line 7602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7604
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7605
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 7607
    return-object p0
.end method

.method public setAlbumArtist(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7637
    if-nez p1, :cond_8

    .line 7638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7640
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7641
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 7643
    return-object p0
.end method

.method public setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7303
    if-nez p1, :cond_8

    .line 7304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7306
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7307
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7309
    return-object p0
.end method

.method public setCount(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7465
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    .line 7467
    return-object p0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7375
    if-nez p1, :cond_8

    .line 7376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7378
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7379
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 7381
    return-object p0
.end method

.method public setGadgetName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7673
    if-nez p1, :cond_8

    .line 7674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7676
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7677
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 7679
    return-object p0
.end method

.method public setGadgetTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7709
    if-nez p1, :cond_8

    .line 7710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7712
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7713
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 7715
    return-object p0
.end method

.method public setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 7537
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 7539
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7540
    return-object p0
.end method

.method public setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7527
    if-nez p1, :cond_8

    .line 7528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7530
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 7532
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7533
    return-object p0
.end method

.method public setPlayerHeight(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7506
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7507
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    .line 7509
    return-object p0
.end method

.method public setPlayerUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7411
    if-nez p1, :cond_8

    .line 7412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7414
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7415
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 7417
    return-object p0
.end method

.method public setPlayerWidth(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7485
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7486
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    .line 7488
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7339
    if-nez p1, :cond_8

    .line 7340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7342
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7343
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7345
    return-object p0
.end method

.method public setThumbnailUrlFormat(Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7570
    if-nez p1, :cond_8

    .line 7571
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7573
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7574
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 7576
    return-object p0
.end method

.method public setTruncated(Z)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7738
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7739
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    .line 7741
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7236
    if-nez p1, :cond_8

    .line 7237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7239
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7240
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 7242
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7267
    if-nez p1, :cond_8

    .line 7268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7270
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7271
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7273
    return-object p0
.end method

.method public setVideoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7440
    if-nez p1, :cond_8

    .line 7441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7443
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7444
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 7446
    return-object p0
.end method
