.class public final Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ifModifiedSince_:J

.field private maxPhotoCount_:I

.field private offset_:I

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z

.field private sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

.field private streamId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28911
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 29212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 29353
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 29398
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28912
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maybeForceBuilderInitialization()V

    .line 28913
    return-void
.end method

.method static synthetic access$39400()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 1

    .prologue
    .line 28906
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 1

    .prologue
    .line 28918
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28916
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28906
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 3

    .prologue
    .line 28957
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    .line 28958
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28959
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28961
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28906
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 6

    .prologue
    .line 28975
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 28976
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28977
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28978
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28979
    or-int/lit8 v2, v2, 0x1

    .line 28981
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39602(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;J)J

    .line 28982
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28983
    or-int/lit8 v2, v2, 0x2

    .line 28985
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39702(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28986
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 28987
    or-int/lit8 v2, v2, 0x4

    .line 28989
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39802(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28990
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 28991
    or-int/lit8 v2, v2, 0x8

    .line 28993
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39902(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z

    .line 28994
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 28995
    or-int/lit8 v2, v2, 0x10

    .line 28997
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$40002(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z

    .line 28998
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 28999
    or-int/lit8 v2, v2, 0x20

    .line 29001
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$40102(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z

    .line 29002
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 29003
    or-int/lit8 v2, v2, 0x40

    .line 29005
    :cond_5c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$40202(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I

    .line 29006
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 29007
    or-int/lit16 v2, v2, 0x80

    .line 29009
    :cond_69
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$40302(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I

    .line 29010
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 29011
    or-int/lit16 v2, v2, 0x100

    .line 29013
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$40402(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 29014
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 29015
    or-int/lit16 v2, v2, 0x200

    .line 29017
    :cond_83
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$40502(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;J)J

    .line 29018
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 29019
    or-int/lit16 v2, v2, 0x400

    .line 29021
    :cond_90
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$40602(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29022
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$40702(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I

    .line 29023
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28906
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28906
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 28922
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28923
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    .line 28924
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28926
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 28928
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28929
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    .line 28930
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28931
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    .line 28932
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28933
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    .line 28934
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28935
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    .line 28936
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28937
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    .line 28938
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28939
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28940
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28941
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    .line 28942
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28943
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28944
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28945
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 29200
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29201
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 29203
    return-object p0
.end method

.method public clearIfModifiedSince()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 29391
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29392
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    .line 29394
    return-object p0
.end method

.method public clearMaxPhotoCount()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 29325
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29326
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    .line 29328
    return-object p0
.end method

.method public clearOffset()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 29346
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29347
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    .line 29349
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 29169
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    .line 29172
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 29434
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29436
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29437
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29283
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    .line 29286
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29304
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    .line 29307
    return-object p0
.end method

.method public clearReturnUrls()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29262
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    .line 29265
    return-object p0
.end method

.method public clearSortBy()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 29370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29371
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 29373
    return-object p0
.end method

.method public clearStreamId()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 29236
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29237
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 29239
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28906
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28906
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 28949
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

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
    .line 28906
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28906
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28906
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 2

    .prologue
    .line 28953
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29181
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 29182
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 29183
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29184
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 29187
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

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 29382
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    return-wide v0
.end method

.method public getMaxPhotoCount()I
    .registers 2

    .prologue
    .line 29316
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 29337
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 29160
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 29403
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29274
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29295
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29253
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    return v0
.end method

.method public getSortBy()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    .registers 2

    .prologue
    .line 29358
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29217
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 29218
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 29219
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29220
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 29223
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

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 29178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasIfModifiedSince()Z
    .registers 3

    .prologue
    .line 29379
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasMaxPhotoCount()Z
    .registers 3

    .prologue
    .line 29313
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 29334
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29157
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 29400
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29271
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29292
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasReturnUrls()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29250
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasSortBy()Z
    .registers 3

    .prologue
    .line 29355
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 29214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 29065
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
    .line 28906
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28906
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

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
    .line 28906
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29073
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 29074
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_b6

    .line 29079
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29081
    :sswitch_d
    return-object p0

    .line 29086
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29087
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 29091
    :sswitch_1b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29092
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 29096
    :sswitch_28
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29097
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    goto :goto_0

    .line 29101
    :sswitch_35
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29102
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 29106
    :sswitch_42
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29107
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 29111
    :sswitch_4f
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29112
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    goto :goto_0

    .line 29116
    :sswitch_5c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29117
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    goto :goto_0

    .line 29121
    :sswitch_69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 29122
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    move-result-object v3

    .line 29123
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    if-eqz v3, :cond_0

    .line 29124
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29125
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    goto :goto_0

    .line 29130
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    :sswitch_7c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    goto/16 :goto_0

    .line 29135
    :sswitch_8a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 29136
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->hasPhotoOptions()Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 29137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 29139
    :cond_9b
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29140
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    goto/16 :goto_0

    .line 29144
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_a7
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29145
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 29074
    nop

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x38 -> :sswitch_5c
        0x40 -> :sswitch_69
        0x48 -> :sswitch_7c
        0x52 -> :sswitch_8a
        0x5a -> :sswitch_a7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 29027
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29061
    :cond_6
    :goto_6
    return-object p0

    .line 29028
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29029
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29031
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 29032
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29034
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 29035
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29037
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasReturnUrls()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 29038
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getReturnUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29040
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 29041
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29043
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 29044
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29046
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasMaxPhotoCount()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 29047
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getMaxPhotoCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29049
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 29050
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29052
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 29053
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getSortBy()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setSortBy(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29055
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasIfModifiedSince()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 29056
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getIfModifiedSince()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setIfModifiedSince(J)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 29058
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29059
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29422
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 29424
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29430
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29431
    return-object p0

    .line 29427
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29191
    if-nez p1, :cond_8

    .line 29192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29194
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29195
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 29197
    return-object p0
.end method

.method public setIfModifiedSince(J)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29385
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29386
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    .line 29388
    return-object p0
.end method

.method public setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29319
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29320
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    .line 29322
    return-object p0
.end method

.method public setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29340
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29341
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    .line 29343
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29163
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29164
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    .line 29166
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29416
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29418
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29419
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29406
    if-nez p1, :cond_8

    .line 29407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29409
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29411
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29412
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29277
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29278
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    .line 29280
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29298
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29299
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    .line 29301
    return-object p0
.end method

.method public setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29256
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29257
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    .line 29259
    return-object p0
.end method

.method public setSortBy(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29361
    if-nez p1, :cond_8

    .line 29362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29364
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29365
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 29367
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29227
    if-nez p1, :cond_8

    .line 29228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29230
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 29231
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 29233
    return-object p0
.end method
