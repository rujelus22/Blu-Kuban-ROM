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
    .line 12158
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12159
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->maybeForceBuilderInitialization()V

    .line 12160
    return-void
.end method

.method static synthetic access$15700()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 1

    .prologue
    .line 12153
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 1

    .prologue
    .line 12165
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 12163
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 3

    .prologue
    .line 12194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    .line 12195
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 12196
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12198
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12153
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 6

    .prologue
    .line 12212
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 12213
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12214
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12215
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 12216
    or-int/lit8 v2, v2, 0x1

    .line 12218
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanComment_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$15902(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12219
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 12220
    or-int/lit8 v2, v2, 0x2

    .line 12222
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerIsFollowing_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$16002(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12223
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 12224
    or-int/lit8 v2, v2, 0x4

    .line 12226
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasMuted_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$16102(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12227
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 12228
    or-int/lit8 v2, v2, 0x8

    .line 12230
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanReshare_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$16202(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12231
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 12232
    or-int/lit8 v2, v2, 0x10

    .line 12234
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasRead_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$16302(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12235
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 12236
    or-int/lit8 v2, v2, 0x20

    .line 12238
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanPlusone_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$16402(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z

    .line 12239
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->access$16502(Lcom/google/wireless/tacotruck/proto/Data$ActionState;I)I

    .line 12240
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12153
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12153
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12169
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12170
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    .line 12171
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12172
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    .line 12173
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12174
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    .line 12175
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12176
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    .line 12177
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12178
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    .line 12179
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12180
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    .line 12181
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12182
    return-object p0
.end method

.method public clearViewerCanComment()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 12338
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    .line 12341
    return-object p0
.end method

.method public clearViewerCanPlusone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 12443
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    .line 12446
    return-object p0
.end method

.method public clearViewerCanReshare()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 12401
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    .line 12404
    return-object p0
.end method

.method public clearViewerHasMuted()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 12380
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    .line 12383
    return-object p0
.end method

.method public clearViewerHasRead()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 12422
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    .line 12425
    return-object p0
.end method

.method public clearViewerIsFollowing()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2

    .prologue
    .line 12359
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    .line 12362
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 12153
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12153
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3

    .prologue
    .line 12186
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
    .line 12153
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 12153
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12153
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 12190
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public getViewerCanComment()Z
    .registers 2

    .prologue
    .line 12329
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    return v0
.end method

.method public getViewerCanPlusone()Z
    .registers 2

    .prologue
    .line 12434
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    return v0
.end method

.method public getViewerCanReshare()Z
    .registers 2

    .prologue
    .line 12392
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    return v0
.end method

.method public getViewerHasMuted()Z
    .registers 2

    .prologue
    .line 12371
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    return v0
.end method

.method public getViewerHasRead()Z
    .registers 2

    .prologue
    .line 12413
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    return v0
.end method

.method public getViewerIsFollowing()Z
    .registers 2

    .prologue
    .line 12350
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    return v0
.end method

.method public hasViewerCanComment()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12326
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
    .line 12431
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
    .line 12389
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
    .line 12368
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
    .line 12410
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
    .line 12347
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
    .line 12153
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

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
    .line 12153
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
    .line 12275
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 12276
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5c

    .line 12281
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12283
    :sswitch_d
    return-object p0

    .line 12288
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12289
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    goto :goto_0

    .line 12293
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12294
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    goto :goto_0

    .line 12298
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12299
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    goto :goto_0

    .line 12303
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12304
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    goto :goto_0

    .line 12308
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12309
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    goto :goto_0

    .line 12313
    :sswitch_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12314
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    goto :goto_0

    .line 12276
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
    .line 12244
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12263
    :cond_6
    :goto_6
    return-object p0

    .line 12245
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerCanComment()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12246
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanComment()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerCanComment(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12248
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerIsFollowing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12249
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerIsFollowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerIsFollowing(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12251
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerHasMuted()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 12252
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerHasMuted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerHasMuted(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12254
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerCanReshare()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 12255
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanReshare()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerCanReshare(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12257
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerHasRead()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 12258
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerHasRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerHasRead(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 12260
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerCanPlusone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12261
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanPlusone()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->setViewerCanPlusone(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    goto :goto_6
.end method

.method public setViewerCanComment(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12332
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12333
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanComment_:Z

    .line 12335
    return-object p0
.end method

.method public setViewerCanPlusone(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12437
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12438
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanPlusone_:Z

    .line 12440
    return-object p0
.end method

.method public setViewerCanReshare(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12395
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12396
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerCanReshare_:Z

    .line 12398
    return-object p0
.end method

.method public setViewerHasMuted(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12375
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasMuted_:Z

    .line 12377
    return-object p0
.end method

.method public setViewerHasRead(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12416
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12417
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerHasRead_:Z

    .line 12419
    return-object p0
.end method

.method public setViewerIsFollowing(Z)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12353
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->bitField0_:I

    .line 12354
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->viewerIsFollowing_:Z

    .line 12356
    return-object p0
.end method
