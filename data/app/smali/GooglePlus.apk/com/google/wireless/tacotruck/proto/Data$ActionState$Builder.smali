.class public final Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ActionStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ActionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ActionState;",
        "Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ActionStateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private viewerCanComment_:Z

.field private viewerCanPlusone_:Z

.field private viewerCanReshare_:Z

.field private viewerHasMuted_:Z

.field private viewerHasRead_:Z

.field private viewerIsFollowing_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12801
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12802
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->maybeForceBuilderInitialization()V

    .line 12803
    return-void
.end method

.method static synthetic access$16500()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 1

    .prologue
    .line 12796
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 1

    .prologue
    .line 12808
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 12806
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 3

    .prologue
    .line 12837
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    .line 12838
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 12839
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12841
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 6

    .prologue
    .line 12855
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 12856
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12857
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12858
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 12859
    or-int/lit8 v2, v2, 0x1

    .line 12861
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanComment_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$16702(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12862
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 12863
    or-int/lit8 v2, v2, 0x2

    .line 12865
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerIsFollowing_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$16802(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12866
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 12867
    or-int/lit8 v2, v2, 0x4

    .line 12869
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasMuted_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$16902(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12870
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 12871
    or-int/lit8 v2, v2, 0x8

    .line 12873
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanReshare_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$17002(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12874
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 12875
    or-int/lit8 v2, v2, 0x10

    .line 12877
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasRead_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$17102(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12878
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 12879
    or-int/lit8 v2, v2, 0x20

    .line 12881
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanPlusone_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$17202(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12882
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$17302(Lcom/google/wireless/tacotruck/proto/Data$ActionState;I)I

    .line 12883
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12812
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12813
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    .line 12814
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12815
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    .line 12816
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12817
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    .line 12818
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12819
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    .line 12820
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12821
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    .line 12822
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12823
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    .line 12824
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12825
    return-object p0
.end method

.method public clearViewerCanComment()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 12981
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12982
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    .line 12984
    return-object p0
.end method

.method public clearViewerCanPlusone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 13086
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 13087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    .line 13089
    return-object p0
.end method

.method public clearViewerCanReshare()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 13044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 13045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    .line 13047
    return-object p0
.end method

.method public clearViewerHasMuted()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 13023
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 13024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    .line 13026
    return-object p0
.end method

.method public clearViewerHasRead()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 13065
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 13066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    .line 13068
    return-object p0
.end method

.method public clearViewerIsFollowing()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 13002
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 13003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    .line 13005
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 12796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3

    .prologue
    .line 12829
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

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
    .line 12796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 12796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 12833
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public getViewerCanComment()Z
    .registers 2

    .prologue
    .line 12972
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    return v0
.end method

.method public getViewerCanPlusone()Z
    .registers 2

    .prologue
    .line 13077
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    return v0
.end method

.method public getViewerCanReshare()Z
    .registers 2

    .prologue
    .line 13035
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    return v0
.end method

.method public getViewerHasMuted()Z
    .registers 2

    .prologue
    .line 13014
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    return v0
.end method

.method public getViewerHasRead()Z
    .registers 2

    .prologue
    .line 13056
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    return v0
.end method

.method public getViewerIsFollowing()Z
    .registers 2

    .prologue
    .line 12993
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    return v0
.end method

.method public hasViewerCanComment()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12969
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasViewerCanPlusone()Z
    .registers 3

    .prologue
    .line 13074
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

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

.method public hasViewerCanReshare()Z
    .registers 3

    .prologue
    .line 13032
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

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

.method public hasViewerHasMuted()Z
    .registers 3

    .prologue
    .line 13011
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

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

.method public hasViewerHasRead()Z
    .registers 3

    .prologue
    .line 13053
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

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

.method public hasViewerIsFollowing()Z
    .registers 3

    .prologue
    .line 12990
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 12910
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
    .line 12796
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12796
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

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
    .line 12796
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12918
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 12919
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5c

    .line 12924
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12926
    :sswitch_d
    return-object p0

    .line 12931
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12932
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    goto :goto_0

    .line 12936
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12937
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    goto :goto_0

    .line 12941
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12942
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    goto :goto_0

    .line 12946
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12947
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    goto :goto_0

    .line 12951
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12952
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    goto :goto_0

    .line 12956
    :sswitch_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12957
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    goto :goto_0

    .line 12919
    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 12887
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12906
    :cond_6
    :goto_6
    return-object p0

    .line 12888
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerCanComment()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12889
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanComment()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerCanComment(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12891
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerIsFollowing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12892
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerIsFollowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerIsFollowing(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12894
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerHasMuted()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 12895
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerHasMuted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerHasMuted(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12897
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerCanReshare()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 12898
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanReshare()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerCanReshare(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12900
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerHasRead()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 12901
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerHasRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerHasRead(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12903
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerCanPlusone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12904
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanPlusone()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerCanPlusone(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    goto :goto_6
.end method

.method public setViewerCanComment(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12975
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12976
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    .line 12978
    return-object p0
.end method

.method public setViewerCanPlusone(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13080
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 13081
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    .line 13083
    return-object p0
.end method

.method public setViewerCanReshare(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13038
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 13039
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    .line 13041
    return-object p0
.end method

.method public setViewerHasMuted(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13017
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 13018
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    .line 13020
    return-object p0
.end method

.method public setViewerHasRead(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13059
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 13060
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    .line 13062
    return-object p0
.end method

.method public setViewerIsFollowing(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12996
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12997
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    .line 12999
    return-object p0
.end method
