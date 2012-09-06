.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxCommentCount_:I

.field private returnComments_:Z

.field private returnDownloadability_:Z

.field private returnImageUrls_:Z

.field private returnPlusOnes_:Z

.field private returnShapes_:Z

.field private returnVideoUrls_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 47438
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 47618
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    .line 47639
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    .line 47660
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    .line 47681
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    .line 47702
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    .line 47744
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnDownloadability_:Z

    .line 47439
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maybeForceBuilderInitialization()V

    .line 47440
    return-void
.end method

.method static synthetic access$66000()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 1

    .prologue
    .line 47433
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 1

    .prologue
    .line 47445
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 47443
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47433
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 3

    .prologue
    .line 47476
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    .line 47477
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 47478
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 47480
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47433
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 6

    .prologue
    .line 47494
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 47495
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47496
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 47497
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 47498
    or-int/lit8 v2, v2, 0x1

    .line 47500
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$66202(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 47501
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 47502
    or-int/lit8 v2, v2, 0x2

    .line 47504
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$66302(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 47505
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 47506
    or-int/lit8 v2, v2, 0x4

    .line 47508
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$66402(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 47509
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 47510
    or-int/lit8 v2, v2, 0x8

    .line 47512
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$66502(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 47513
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 47514
    or-int/lit8 v2, v2, 0x10

    .line 47516
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$66602(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 47517
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 47518
    or-int/lit8 v2, v2, 0x20

    .line 47520
    :cond_4f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$66702(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;I)I

    .line 47521
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 47522
    or-int/lit8 v2, v2, 0x40

    .line 47524
    :cond_5c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnDownloadability_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnDownloadability_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$66802(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 47525
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$66902(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;I)I

    .line 47526
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47433
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47433
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 47449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 47450
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    .line 47451
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47452
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    .line 47453
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47454
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    .line 47455
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47456
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    .line 47457
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47458
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    .line 47459
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47460
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    .line 47461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47462
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnDownloadability_:Z

    .line 47463
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47464
    return-object p0
.end method

.method public clearMaxCommentCount()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 47737
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47738
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    .line 47740
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 47653
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    .line 47656
    return-object p0
.end method

.method public clearReturnDownloadability()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 47758
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnDownloadability_:Z

    .line 47761
    return-object p0
.end method

.method public clearReturnImageUrls()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 47632
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    .line 47635
    return-object p0
.end method

.method public clearReturnPlusOnes()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 47716
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    .line 47719
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 47674
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    .line 47677
    return-object p0
.end method

.method public clearReturnVideoUrls()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 47695
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    .line 47698
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 47433
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47433
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3

    .prologue
    .line 47468
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

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
    .line 47433
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 47433
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47433
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 47472
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCommentCount()I
    .registers 2

    .prologue
    .line 47728
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    return v0
.end method

.method public getReturnComments()Z
    .registers 2

    .prologue
    .line 47644
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnDownloadability()Z
    .registers 2

    .prologue
    .line 47749
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnDownloadability_:Z

    return v0
.end method

.method public getReturnImageUrls()Z
    .registers 2

    .prologue
    .line 47623
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    return v0
.end method

.method public getReturnPlusOnes()Z
    .registers 2

    .prologue
    .line 47707
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2

    .prologue
    .line 47665
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnVideoUrls()Z
    .registers 2

    .prologue
    .line 47686
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    return v0
.end method

.method public hasMaxCommentCount()Z
    .registers 3

    .prologue
    .line 47725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3

    .prologue
    .line 47641
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public hasReturnDownloadability()Z
    .registers 3

    .prologue
    .line 47746
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public hasReturnImageUrls()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47620
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReturnPlusOnes()Z
    .registers 3

    .prologue
    .line 47704
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3

    .prologue
    .line 47662
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public hasReturnVideoUrls()Z
    .registers 3

    .prologue
    .line 47683
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 47556
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
    .line 47433
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 47433
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

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
    .line 47433
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47564
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 47565
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6a

    .line 47570
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47572
    :sswitch_d
    return-object p0

    .line 47577
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47578
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    goto :goto_0

    .line 47582
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47583
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    goto :goto_0

    .line 47587
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47588
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    goto :goto_0

    .line 47592
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47593
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    goto :goto_0

    .line 47597
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47598
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    goto :goto_0

    .line 47602
    :sswitch_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47603
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    goto :goto_0

    .line 47607
    :sswitch_5c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47608
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnDownloadability_:Z

    goto :goto_0

    .line 47565
    nop

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x38 -> :sswitch_5c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 47530
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 47552
    :cond_6
    :goto_6
    return-object p0

    .line 47531
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnImageUrls()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 47532
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnImageUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 47534
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 47535
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 47537
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 47538
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 47540
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnVideoUrls()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 47541
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnVideoUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 47543
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnPlusOnes()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 47544
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnPlusOnes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 47546
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasMaxCommentCount()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 47547
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getMaxCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setMaxCommentCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 47549
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnDownloadability()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47550
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnDownloadability()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnDownloadability(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    goto :goto_6
.end method

.method public setMaxCommentCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47731
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47732
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    .line 47734
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47648
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    .line 47650
    return-object p0
.end method

.method public setReturnDownloadability(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47752
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47753
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnDownloadability_:Z

    .line 47755
    return-object p0
.end method

.method public setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47626
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47627
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    .line 47629
    return-object p0
.end method

.method public setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47710
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47711
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    .line 47713
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47668
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47669
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    .line 47671
    return-object p0
.end method

.method public setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47689
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 47690
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    .line 47692
    return-object p0
.end method
