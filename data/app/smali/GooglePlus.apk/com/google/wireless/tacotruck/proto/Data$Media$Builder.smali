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
    .line 7535
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7871
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 7895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7931
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7967
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 8003
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 8039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 8075
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 8162
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 8205
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 8229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 8265
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 8301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 8337
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 7536
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->maybeForceBuilderInitialization()V

    .line 7537
    return-void
.end method

.method static synthetic access$8700(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7530
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 1

    .prologue
    .line 7530
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
    .line 7602
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    .line 7603
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 7604
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 7607
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 1

    .prologue
    .line 7542
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7540
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7530
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 3

    .prologue
    .line 7593
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    .line 7594
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7595
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7597
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7530
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 8

    .prologue
    const/high16 v6, 0x1

    const v5, 0x8000

    .line 7611
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Media;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 7612
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Media;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7613
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7614
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 7615
    or-int/lit8 v2, v2, 0x1

    .line 7617
    :cond_15
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9002(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 7618
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 7619
    or-int/lit8 v2, v2, 0x2

    .line 7621
    :cond_21
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9102(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7622
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2d

    .line 7623
    or-int/lit8 v2, v2, 0x4

    .line 7625
    :cond_2d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9202(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7626
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3a

    .line 7627
    or-int/lit8 v2, v2, 0x8

    .line 7629
    :cond_3a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9302(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7630
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_47

    .line 7631
    or-int/lit8 v2, v2, 0x10

    .line 7633
    :cond_47
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9402(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7634
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_54

    .line 7635
    or-int/lit8 v2, v2, 0x20

    .line 7637
    :cond_54
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9502(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7638
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_61

    .line 7639
    or-int/lit8 v2, v2, 0x40

    .line 7641
    :cond_61
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9602(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 7642
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_6e

    .line 7643
    or-int/lit16 v2, v2, 0x80

    .line 7645
    :cond_6e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9702(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I

    .line 7646
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_7b

    .line 7647
    or-int/lit16 v2, v2, 0x100

    .line 7649
    :cond_7b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9802(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I

    .line 7650
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_88

    .line 7651
    or-int/lit16 v2, v2, 0x200

    .line 7653
    :cond_88
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$9902(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I

    .line 7654
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_95

    .line 7655
    or-int/lit16 v2, v2, 0x400

    .line 7657
    :cond_95
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$10002(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 7658
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_a2

    .line 7659
    or-int/lit16 v2, v2, 0x800

    .line 7661
    :cond_a2
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$10102(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 7662
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_af

    .line 7663
    or-int/lit16 v2, v2, 0x1000

    .line 7665
    :cond_af
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$10202(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7666
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_bc

    .line 7667
    or-int/lit16 v2, v2, 0x2000

    .line 7669
    :cond_bc
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$10302(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7670
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_c9

    .line 7671
    or-int/lit16 v2, v2, 0x4000

    .line 7673
    :cond_c9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$10402(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7674
    and-int v3, v0, v5

    if-ne v3, v5, :cond_d3

    .line 7675
    or-int/2addr v2, v5

    .line 7677
    :cond_d3
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$10502(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7678
    and-int v3, v0, v6

    if-ne v3, v6, :cond_dd

    .line 7679
    or-int/2addr v2, v6

    .line 7681
    :cond_dd
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$10602(Lcom/google/wireless/tacotruck/proto/Data$Media;Z)Z

    .line 7682
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->access$10702(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I

    .line 7683
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7530
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7530
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 7546
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7547
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 7548
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7550
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7551
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7552
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7554
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 7556
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 7558
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7559
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 7560
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7561
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    .line 7562
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7563
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    .line 7564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7565
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    .line 7566
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7567
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 7568
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7569
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 7570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7571
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 7572
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7573
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 7574
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 7576
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 7578
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7579
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    .line 7580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7581
    return-object p0
.end method

.method public clearAlbum()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8253
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8254
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 8256
    return-object p0
.end method

.method public clearAlbumArtist()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8289
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8290
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 8292
    return-object p0
.end method

.method public clearContentHtml()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7955
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7956
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7958
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8113
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8114
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    .line 8116
    return-object p0
.end method

.method public clearDescriptionHtml()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8027
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8028
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 8030
    return-object p0
.end method

.method public clearGadgetName()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8325
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8326
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 8328
    return-object p0
.end method

.method public clearGadgetTitle()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3

    .prologue
    .line 8361
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8362
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 8364
    return-object p0
.end method

.method public clearPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8198
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 8200
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8201
    return-object p0
.end method

.method public clearPlayerHeight()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8156
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    .line 8158
    return-object p0
.end method

.method public clearPlayerUrl()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8063
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8064
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 8066
    return-object p0
.end method

.method public clearPlayerWidth()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8134
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8135
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    .line 8137
    return-object p0
.end method

.method public clearThumbnailUrl()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7991
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7992
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7994
    return-object p0
.end method

.method public clearThumbnailUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8222
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8223
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 8225
    return-object p0
.end method

.method public clearTruncated()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3

    .prologue
    .line 8387
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    .line 8390
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7888
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7889
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 7891
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7919
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7920
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7922
    return-object p0
.end method

.method public clearVideoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 8092
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8093
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 8095
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7530
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7530
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3

    .prologue
    .line 7585
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
    .line 7530
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8234
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 8235
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8236
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8237
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 8240
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
    .line 8270
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 8271
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8272
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8273
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 8276
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
    .line 7936
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7937
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7938
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7939
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7942
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
    .line 8104
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7530
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7530
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 2

    .prologue
    .line 7589
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8008
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 8009
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8010
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8011
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 8014
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
    .line 8306
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 8307
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8308
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8309
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 8312
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
    .line 8342
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 8343
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8344
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8345
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 8348
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
    .line 8167
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object v0
.end method

.method public getPlayerHeight()I
    .registers 2

    .prologue
    .line 8146
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    return v0
.end method

.method public getPlayerUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8044
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 8045
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8046
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8047
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 8050
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
    .line 8125
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7972
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7973
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7974
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7975
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7978
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
    .line 8210
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method

.method public getTruncated()Z
    .registers 2

    .prologue
    .line 8378
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 2

    .prologue
    .line 7876
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7900
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7901
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7902
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7903
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7906
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
    .line 8080
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    return-object v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 8231
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
    .line 8267
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
    .line 7933
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
    .line 8101
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
    .line 8005
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
    .line 8303
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

    .line 8339
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
    .line 8164
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
    .line 8143
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
    .line 8041
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
    .line 8122
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
    .line 7969
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
    .line 8207
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

    .line 8375
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

    .line 7873
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
    .line 7897
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
    .line 8077
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 7743
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
    .line 7530
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 7530
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Media;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

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
    .line 7530
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
    .line 7751
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 7752
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_11a

    .line 7757
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7759
    :sswitch_d
    return-object p0

    .line 7764
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7765
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v3

    .line 7766
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    if-eqz v3, :cond_0

    .line 7767
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7768
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_0

    .line 7773
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7774
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 7778
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7779
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 7783
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7784
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 7788
    :sswitch_48
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7789
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 7793
    :sswitch_55
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7794
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 7798
    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7799
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    move-result-object v3

    .line 7800
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    if-eqz v3, :cond_0

    .line 7801
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7802
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    goto :goto_0

    .line 7807
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    :sswitch_75
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7808
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    goto/16 :goto_0

    .line 7812
    :sswitch_83
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7813
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    goto/16 :goto_0

    .line 7817
    :sswitch_91
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7818
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    goto/16 :goto_0

    .line 7822
    :sswitch_9f
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v1

    .line 7823
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->hasPhotoData()Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 7824
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    .line 7826
    :cond_b0
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7827
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    goto/16 :goto_0

    .line 7831
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    :sswitch_bc
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7832
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    move-result-object v3

    .line 7833
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    if-eqz v3, :cond_0

    .line 7834
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7835
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    goto/16 :goto_0

    .line 7840
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    :sswitch_d0
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7841
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7845
    :sswitch_de
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7846
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7850
    :sswitch_ec
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7851
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7855
    :sswitch_fa
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7856
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7860
    :sswitch_10a
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7861
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    goto/16 :goto_0

    .line 7752
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
    .line 7687
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7739
    :cond_6
    :goto_6
    return-object p0

    .line 7688
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7689
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7691
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7692
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7694
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasContentHtml()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 7695
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7697
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 7698
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7700
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 7701
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7703
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPlayerUrl()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 7704
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPlayerUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7706
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasVideoMediaDisplay()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 7707
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getVideoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setVideoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7709
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 7710
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setCount(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7712
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPlayerWidth()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 7713
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPlayerWidth(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7715
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPlayerHeight()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 7716
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPlayerHeight(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7718
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPhotoData()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 7719
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergePhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7721
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrlFormat()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 7722
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setThumbnailUrlFormat(Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7724
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 7725
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setAlbum(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7727
    :cond_b0
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasAlbumArtist()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 7728
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setAlbumArtist(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7730
    :cond_bd
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasGadgetName()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 7731
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setGadgetName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7733
    :cond_ca
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasGadgetTitle()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 7734
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setGadgetTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 7736
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasTruncated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7737
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getTruncated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setTruncated(Z)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8186
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 8188
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 8194
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8195
    return-object p0

    .line 8191
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    goto :goto_20
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8244
    if-nez p1, :cond_8

    .line 8245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8247
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8248
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->album_:Ljava/lang/Object;

    .line 8250
    return-object p0
.end method

.method public setAlbumArtist(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8280
    if-nez p1, :cond_8

    .line 8281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8283
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8284
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->albumArtist_:Ljava/lang/Object;

    .line 8286
    return-object p0
.end method

.method public setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7946
    if-nez p1, :cond_8

    .line 7947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7949
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7950
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->contentHtml_:Ljava/lang/Object;

    .line 7952
    return-object p0
.end method

.method public setCount(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8107
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8108
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->count_:I

    .line 8110
    return-object p0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8018
    if-nez p1, :cond_8

    .line 8019
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8021
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8022
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 8024
    return-object p0
.end method

.method public setGadgetName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8316
    if-nez p1, :cond_8

    .line 8317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8319
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8320
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetName_:Ljava/lang/Object;

    .line 8322
    return-object p0
.end method

.method public setGadgetTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8352
    if-nez p1, :cond_8

    .line 8353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8355
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8356
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->gadgetTitle_:Ljava/lang/Object;

    .line 8358
    return-object p0
.end method

.method public setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 8180
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 8182
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8183
    return-object p0
.end method

.method public setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8170
    if-nez p1, :cond_8

    .line 8171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8173
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 8175
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8176
    return-object p0
.end method

.method public setPlayerHeight(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8149
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8150
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerHeight_:I

    .line 8152
    return-object p0
.end method

.method public setPlayerUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8054
    if-nez p1, :cond_8

    .line 8055
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8057
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8058
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerUrl_:Ljava/lang/Object;

    .line 8060
    return-object p0
.end method

.method public setPlayerWidth(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8128
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8129
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->playerWidth_:I

    .line 8131
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7982
    if-nez p1, :cond_8

    .line 7983
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7985
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7986
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 7988
    return-object p0
.end method

.method public setThumbnailUrlFormat(Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8213
    if-nez p1, :cond_8

    .line 8214
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8216
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8217
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 8219
    return-object p0
.end method

.method public setTruncated(Z)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8381
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8382
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->truncated_:Z

    .line 8384
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7879
    if-nez p1, :cond_8

    .line 7880
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7882
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7883
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 7885
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7910
    if-nez p1, :cond_8

    .line 7911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7913
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 7914
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->url_:Ljava/lang/Object;

    .line 7916
    return-object p0
.end method

.method public setVideoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8083
    if-nez p1, :cond_8

    .line 8084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8086
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->bitField0_:I

    .line 8087
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 8089
    return-object p0
.end method
