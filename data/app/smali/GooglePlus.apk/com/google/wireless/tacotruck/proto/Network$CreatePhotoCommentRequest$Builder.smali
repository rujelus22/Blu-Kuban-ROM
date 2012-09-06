.class public final Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private comment_:Ljava/lang/Object;

.field private ownerGaiaId_:J

.field private photoId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21545
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21725
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21761
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21546
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->maybeForceBuilderInitialization()V

    .line 21547
    return-void
.end method

.method static synthetic access$28900()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 1

    .prologue
    .line 21540
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 1

    .prologue
    .line 21552
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21550
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    .registers 3

    .prologue
    .line 21577
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    .line 21578
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21579
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21581
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    .registers 6

    .prologue
    .line 21595
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 21596
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21597
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 21598
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 21599
    or-int/lit8 v2, v2, 0x1

    .line 21601
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$29102(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;J)J

    .line 21602
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 21603
    or-int/lit8 v2, v2, 0x2

    .line 21605
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$29202(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;J)J

    .line 21606
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 21607
    or-int/lit8 v2, v2, 0x4

    .line 21609
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$29302(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21610
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 21611
    or-int/lit8 v2, v2, 0x8

    .line 21613
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$29402(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21614
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$29502(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;I)I

    .line 21615
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 21556
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21557
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    .line 21558
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21559
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    .line 21560
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21561
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21562
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21563
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21565
    return-object p0
.end method

.method public clearComment()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 2

    .prologue
    .line 21749
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21750
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21752
    return-object p0
.end method

.method public clearCommentId()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 2

    .prologue
    .line 21785
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21786
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21788
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3

    .prologue
    .line 21718
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21719
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    .line 21721
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3

    .prologue
    .line 21697
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21698
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    .line 21700
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3

    .prologue
    .line 21569
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

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
    .line 21540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21730
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21731
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21732
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21733
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21736
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

.method public getCommentId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21766
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21767
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21768
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21769
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21772
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 21540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    .registers 2

    .prologue
    .line 21573
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 21709
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 21688
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    return-wide v0
.end method

.method public hasComment()Z
    .registers 3

    .prologue
    .line 21727
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 21763
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 21706
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

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

    .line 21685
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

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
    .line 21636
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
    .line 21540
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21540
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

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
    .line 21540
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21644
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 21645
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 21650
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21652
    :sswitch_d
    return-object p0

    .line 21657
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21658
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    goto :goto_0

    .line 21662
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21663
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 21667
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21668
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    goto :goto_0

    .line 21672
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21673
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    goto :goto_0

    .line 21645
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 21619
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21632
    :cond_6
    :goto_6
    return-object p0

    .line 21620
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21621
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    .line 21623
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 21624
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    .line 21626
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 21627
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->setComment(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    .line 21629
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21630
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    goto :goto_6
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21740
    if-nez p1, :cond_8

    .line 21741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21743
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21744
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21746
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21776
    if-nez p1, :cond_8

    .line 21777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21779
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21780
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21782
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21712
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21713
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    .line 21715
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21691
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21692
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    .line 21694
    return-object p0
.end method
