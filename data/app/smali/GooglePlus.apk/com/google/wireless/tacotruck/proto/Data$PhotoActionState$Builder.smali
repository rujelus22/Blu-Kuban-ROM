.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoActionStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoActionStateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private viewerCanApprove_:Z

.field private viewerCanComment_:Z

.field private viewerCanEdit_:Z

.field private viewerCanTag_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13325
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13326
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->maybeForceBuilderInitialization()V

    .line 13327
    return-void
.end method

.method static synthetic access$17500()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 1

    .prologue
    .line 13320
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 1

    .prologue
    .line 13332
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13330
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13320
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 3

    .prologue
    .line 13357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    .line 13358
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13359
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13361
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13320
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 6

    .prologue
    .line 13375
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 13376
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13377
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13378
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13379
    or-int/lit8 v2, v2, 0x1

    .line 13381
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanComment_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->access$17702(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z

    .line 13382
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13383
    or-int/lit8 v2, v2, 0x2

    .line 13385
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanTag_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->access$17802(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z

    .line 13386
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 13387
    or-int/lit8 v2, v2, 0x4

    .line 13389
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanEdit_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->access$17902(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z

    .line 13390
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 13391
    or-int/lit8 v2, v2, 0x8

    .line 13393
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanApprove_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->access$18002(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z

    .line 13394
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->access$18102(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;I)I

    .line 13395
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13320
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13320
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 13336
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13337
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanComment_:Z

    .line 13338
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13339
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanTag_:Z

    .line 13340
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13341
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanEdit_:Z

    .line 13342
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13343
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanApprove_:Z

    .line 13344
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13345
    return-object p0
.end method

.method public clearViewerCanApprove()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 2

    .prologue
    .line 13540
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanApprove_:Z

    .line 13543
    return-object p0
.end method

.method public clearViewerCanComment()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 2

    .prologue
    .line 13477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanComment_:Z

    .line 13480
    return-object p0
.end method

.method public clearViewerCanEdit()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 2

    .prologue
    .line 13519
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanEdit_:Z

    .line 13522
    return-object p0
.end method

.method public clearViewerCanTag()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 2

    .prologue
    .line 13498
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanTag_:Z

    .line 13501
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13320
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13320
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 3

    .prologue
    .line 13349
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

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
    .line 13320
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13320
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13320
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 13353
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    return-object v0
.end method

.method public getViewerCanApprove()Z
    .registers 2

    .prologue
    .line 13531
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanApprove_:Z

    return v0
.end method

.method public getViewerCanComment()Z
    .registers 2

    .prologue
    .line 13468
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanComment_:Z

    return v0
.end method

.method public getViewerCanEdit()Z
    .registers 2

    .prologue
    .line 13510
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanEdit_:Z

    return v0
.end method

.method public getViewerCanTag()Z
    .registers 2

    .prologue
    .line 13489
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanTag_:Z

    return v0
.end method

.method public hasViewerCanApprove()Z
    .registers 3

    .prologue
    .line 13528
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

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

.method public hasViewerCanComment()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13465
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasViewerCanEdit()Z
    .registers 3

    .prologue
    .line 13507
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

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

.method public hasViewerCanTag()Z
    .registers 3

    .prologue
    .line 13486
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

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
    .line 13416
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
    .line 13320
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 13320
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

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
    .line 13320
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13424
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 13425
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 13430
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13432
    :sswitch_d
    return-object p0

    .line 13437
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13438
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanComment_:Z

    goto :goto_0

    .line 13442
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13443
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanTag_:Z

    goto :goto_0

    .line 13447
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13448
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanEdit_:Z

    goto :goto_0

    .line 13452
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13453
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanApprove_:Z

    goto :goto_0

    .line 13425
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 13399
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13412
    :cond_6
    :goto_6
    return-object p0

    .line 13400
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->hasViewerCanComment()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13401
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanComment()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->setViewerCanComment(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 13403
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->hasViewerCanTag()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13404
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanTag()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->setViewerCanTag(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 13406
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->hasViewerCanEdit()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 13407
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanEdit()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->setViewerCanEdit(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 13409
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->hasViewerCanApprove()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13410
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanApprove()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->setViewerCanApprove(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    goto :goto_6
.end method

.method public setViewerCanApprove(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13534
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13535
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanApprove_:Z

    .line 13537
    return-object p0
.end method

.method public setViewerCanComment(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13471
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13472
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanComment_:Z

    .line 13474
    return-object p0
.end method

.method public setViewerCanEdit(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13513
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13514
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanEdit_:Z

    .line 13516
    return-object p0
.end method

.method public setViewerCanTag(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13492
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->bitField0_:I

    .line 13493
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->viewerCanTag_:Z

    .line 13495
    return-object p0
.end method
