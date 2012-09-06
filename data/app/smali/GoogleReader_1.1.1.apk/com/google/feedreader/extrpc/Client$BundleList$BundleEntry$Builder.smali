.class public final Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;",
        "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

.field private id_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21590
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->id_:Ljava/lang/Object;

    .line 21752
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .line 21591
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->maybeForceBuilderInitialization()V

    .line 21592
    return-void
.end method

.method static synthetic access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21585
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26600()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 1

    .prologue
    .line 21585
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21627
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    .line 21628
    .local v0, result:Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 21629
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 21632
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 1

    .prologue
    .line 21597
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21595
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 3

    .prologue
    .line 21618
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    .line 21619
    .local v0, result:Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21620
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21622
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 6

    .prologue
    .line 21636
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;-><init>(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 21637
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21638
    const/4 v2, 0x0

    .line 21639
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 21640
    or-int/lit8 v2, v2, 0x1

    .line 21642
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->access$26802(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21643
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 21644
    or-int/lit8 v1, v2, 0x2

    .line 21646
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->access$26902(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .line 21647
    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->access$27002(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;I)I

    .line 21648
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 2

    .prologue
    .line 21601
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21602
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->id_:Ljava/lang/Object;

    .line 21603
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21604
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .line 21605
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21606
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBundle()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 2

    .prologue
    .line 21788
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .line 21790
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21791
    return-object p0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 2

    .prologue
    .line 21740
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21741
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->id_:Ljava/lang/Object;

    .line 21743
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 3

    .prologue
    .line 21610
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

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
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2

    .prologue
    .line 21757
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 2

    .prologue
    .line 21614
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21585
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21721
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->id_:Ljava/lang/Object;

    .line 21722
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 21723
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21724
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 21727
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasBundle()Z
    .registers 3

    .prologue
    .line 21754
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 21718
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 21663
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 21675
    :goto_8
    return v0

    .line 21667
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->hasBundle()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 21669
    goto :goto_8

    .line 21671
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->getBundle()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    .line 21673
    goto :goto_8

    .line 21675
    :cond_1d
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeBundle(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21776
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 21778
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .line 21784
    :goto_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21785
    return-object p0

    .line 21781
    :cond_26
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 3
    .parameter

    .prologue
    .line 21652
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 21659
    :goto_7
    return-object v0

    .line 21653
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 21654
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    .line 21656
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->hasBundle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 21657
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getBundle()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeBundle(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    :cond_22
    move-object v0, p0

    .line 21659
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21683
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 21684
    sparse-switch v0, :sswitch_data_3a

    .line 21689
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 21691
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 21687
    goto :goto_e

    .line 21696
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21697
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 21701
    :sswitch_1e
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    .line 21702
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->hasBundle()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 21703
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->getBundle()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    .line 21705
    :cond_2f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21706
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->setBundle(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    goto :goto_0

    .line 21684
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
    .end sparse-switch
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
    .line 21585
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21585
    check-cast p1, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

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
    .line 21585
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBundle(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 21770
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .line 21772
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21773
    return-object p0
.end method

.method public setBundle(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21760
    if-nez p1, :cond_8

    .line 21761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21763
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .line 21765
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21766
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21731
    if-nez p1, :cond_8

    .line 21732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21734
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21735
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->id_:Ljava/lang/Object;

    .line 21737
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 21746
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->bitField0_:I

    .line 21747
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->id_:Ljava/lang/Object;

    .line 21749
    return-void
.end method
