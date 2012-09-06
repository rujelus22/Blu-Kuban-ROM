.class public final Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private approve_:Z

.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ownerGaiaId_:J

.field private photoId_:J

.field private shapeId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36895
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36896
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->maybeForceBuilderInitialization()V

    .line 36897
    return-void
.end method

.method static synthetic access$50800()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 1

    .prologue
    .line 36890
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 1

    .prologue
    .line 36902
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 36900
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    .registers 3

    .prologue
    .line 36929
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    .line 36930
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 36931
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 36933
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    .registers 6

    .prologue
    .line 36947
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 36948
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36949
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 36950
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 36951
    or-int/lit8 v2, v2, 0x1

    .line 36953
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$51002(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;J)J

    .line 36954
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 36955
    or-int/lit8 v2, v2, 0x2

    .line 36957
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$51102(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36958
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 36959
    or-int/lit8 v2, v2, 0x4

    .line 36961
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$51202(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;J)J

    .line 36962
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 36963
    or-int/lit8 v2, v2, 0x8

    .line 36965
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->approve_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$51302(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Z)Z

    .line 36966
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 36967
    or-int/lit8 v2, v2, 0x10

    .line 36969
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->shapeId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$51402(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;J)J

    .line 36970
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$51502(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;I)I

    .line 36971
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 36906
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36907
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    .line 36908
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36909
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36911
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    .line 36912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    .line 36914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36915
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    .line 36916
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36917
    return-object p0
.end method

.method public clearApprove()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 2

    .prologue
    .line 37139
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    .line 37142
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 2

    .prologue
    .line 37092
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37093
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 37095
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3

    .prologue
    .line 37061
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37062
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    .line 37064
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3

    .prologue
    .line 37118
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    .line 37121
    return-object p0
.end method

.method public clearShapeId()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3

    .prologue
    .line 37160
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    .line 37163
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 36890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3

    .prologue
    .line 36921
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

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
    .line 36890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApprove()Z
    .registers 2

    .prologue
    .line 37130
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 36890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    .registers 2

    .prologue
    .line 36925
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37073
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 37074
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37075
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37076
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 37079
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

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 37052
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 37109
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    return-wide v0
.end method

.method public getShapeId()J
    .registers 3

    .prologue
    .line 37151
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    return-wide v0
.end method

.method public hasApprove()Z
    .registers 3

    .prologue
    .line 37127
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 37070
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37049
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 37106
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

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

.method public hasShapeId()Z
    .registers 3

    .prologue
    .line 37148
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 36995
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
    .line 36890
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 36890
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

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
    .line 36890
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37003
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 37004
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 37009
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37011
    :sswitch_d
    return-object p0

    .line 37016
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37017
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 37021
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37022
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    goto :goto_0

    .line 37026
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37027
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    goto :goto_0

    .line 37031
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37032
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    goto :goto_0

    .line 37036
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37037
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto :goto_0

    .line 37004
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 36975
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 36991
    :cond_6
    :goto_6
    return-object p0

    .line 36976
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36977
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 36979
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 36980
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 36982
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 36983
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 36985
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasApprove()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 36986
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getApprove()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setApprove(Z)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 36988
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasShapeId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36989
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getShapeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    goto :goto_6
.end method

.method public setApprove(Z)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37133
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37134
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    .line 37136
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37083
    if-nez p1, :cond_8

    .line 37084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37086
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37087
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 37089
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 37055
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37056
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    .line 37058
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 37112
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37113
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    .line 37115
    return-object p0
.end method

.method public setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 37154
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 37155
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    .line 37157
    return-object p0
.end method
