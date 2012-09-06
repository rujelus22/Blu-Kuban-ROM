.class public final Lcom/google/feedreader/extrpc/Client$Feed$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FeedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Feed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Feed;",
        "Lcom/google/feedreader/extrpc/Client$Feed$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$FeedOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private htmlUrl_:Ljava/lang/Object;

.field private streamId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14774
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->title_:Ljava/lang/Object;

    .line 14810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 14846
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->streamId_:Ljava/lang/Object;

    .line 14639
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->maybeForceBuilderInitialization()V

    .line 14640
    return-void
.end method

.method static synthetic access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14633
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17900()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 1

    .prologue
    .line 14633
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->create()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14677
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    .line 14678
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Feed;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 14679
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 14682
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 1

    .prologue
    .line 14645
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14643
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 3

    .prologue
    .line 14668
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    .line 14669
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Feed;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14670
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14672
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->build()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 6

    .prologue
    .line 14686
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Feed;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Feed;-><init>(Lcom/google/feedreader/extrpc/Client$Feed$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 14687
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14688
    const/4 v2, 0x0

    .line 14689
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14690
    or-int/lit8 v2, v2, 0x1

    .line 14692
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Feed;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Feed;->access$18102(Lcom/google/feedreader/extrpc/Client$Feed;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14693
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14694
    or-int/lit8 v2, v2, 0x2

    .line 14696
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->htmlUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Feed;->htmlUrl_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Feed;->access$18202(Lcom/google/feedreader/extrpc/Client$Feed;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14697
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_31

    .line 14698
    or-int/lit8 v1, v2, 0x4

    .line 14700
    :goto_28
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Feed;->streamId_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Feed;->access$18302(Lcom/google/feedreader/extrpc/Client$Feed;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14701
    #setter for: Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Feed;->access$18402(Lcom/google/feedreader/extrpc/Client$Feed;I)I

    .line 14702
    return-object v0

    :cond_31
    move v1, v2

    goto :goto_28
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 2

    .prologue
    .line 14649
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->title_:Ljava/lang/Object;

    .line 14651
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 14653
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->streamId_:Ljava/lang/Object;

    .line 14655
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14656
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHtmlUrl()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 2

    .prologue
    .line 14834
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14835
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Feed;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 14837
    return-object p0
.end method

.method public clearStreamId()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 2

    .prologue
    .line 14870
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14871
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Feed;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->streamId_:Ljava/lang/Object;

    .line 14873
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 2

    .prologue
    .line 14798
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14799
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->title_:Ljava/lang/Object;

    .line 14801
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 3

    .prologue
    .line 14660
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->create()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

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
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 2

    .prologue
    .line 14664
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14633
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14815
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 14816
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 14817
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14818
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->htmlUrl_:Ljava/lang/Object;

    move-object v2, v1

    .line 14821
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

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14851
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->streamId_:Ljava/lang/Object;

    .line 14852
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 14853
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14854
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->streamId_:Ljava/lang/Object;

    move-object v2, v1

    .line 14857
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

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14779
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->title_:Ljava/lang/Object;

    .line 14780
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 14781
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14782
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 14785
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

.method public hasHtmlUrl()Z
    .registers 3

    .prologue
    .line 14812
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 14848
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 14776
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

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

    .line 14720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 14732
    :goto_8
    return v0

    .line 14724
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->hasHtmlUrl()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 14726
    goto :goto_8

    .line 14728
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->hasStreamId()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    .line 14730
    goto :goto_8

    .line 14732
    :cond_19
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 3
    .parameter

    .prologue
    .line 14706
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 14716
    :goto_7
    return-object v0

    .line 14707
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Feed;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 14708
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    .line 14710
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Feed;->hasHtmlUrl()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 14711
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Feed;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->setHtmlUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    .line 14713
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Feed;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 14714
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Feed;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    :cond_2f
    move-object v0, p0

    .line 14716
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14740
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 14741
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 14746
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14748
    :sswitch_d
    return-object p0

    .line 14753
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14754
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 14758
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14759
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->htmlUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 14763
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14764
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 14741
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
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
    .line 14633
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14633
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Feed;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

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
    .line 14633
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHtmlUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14825
    if-nez p1, :cond_8

    .line 14826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14828
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14829
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 14831
    return-object p0
.end method

.method setHtmlUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 14840
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14841
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 14843
    return-void
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14861
    if-nez p1, :cond_8

    .line 14862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14864
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14865
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->streamId_:Ljava/lang/Object;

    .line 14867
    return-object p0
.end method

.method setStreamId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 14876
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14877
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->streamId_:Ljava/lang/Object;

    .line 14879
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14789
    if-nez p1, :cond_8

    .line 14790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14792
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14793
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->title_:Ljava/lang/Object;

    .line 14795
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 14804
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->bitField0_:I

    .line 14805
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->title_:Ljava/lang/Object;

    .line 14807
    return-void
.end method
