.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 42229
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 42385
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 42421
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    .line 42442
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    .line 42463
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    .line 42484
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 42230
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->maybeForceBuilderInitialization()V

    .line 42231
    return-void
.end method

.method static synthetic access$58600()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 1

    .prologue
    .line 42224
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 1

    .prologue
    .line 42236
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 42234
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    .registers 3

    .prologue
    .line 42263
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    .line 42264
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42265
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 42267
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    .registers 6

    .prologue
    .line 42281
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 42282
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42283
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 42284
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 42285
    or-int/lit8 v2, v2, 0x1

    .line 42287
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$58802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42288
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 42289
    or-int/lit8 v2, v2, 0x2

    .line 42291
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$58902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Z)Z

    .line 42292
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 42293
    or-int/lit8 v2, v2, 0x4

    .line 42295
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$59002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Z)Z

    .line 42296
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 42297
    or-int/lit8 v2, v2, 0x8

    .line 42299
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$59102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Z)Z

    .line 42300
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 42301
    or-int/lit8 v2, v2, 0x10

    .line 42303
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$59202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 42304
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$59302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;I)I

    .line 42305
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 42240
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 42241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 42242
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42243
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    .line 42244
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42245
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    .line 42246
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42247
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    .line 42248
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42249
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 42250
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42251
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2

    .prologue
    .line 42409
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42410
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 42412
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2

    .prologue
    .line 42520
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 42522
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42523
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42456
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    .line 42459
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    .line 42480
    return-object p0
.end method

.method public clearReturnUrls()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    .line 42438
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 42224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3

    .prologue
    .line 42255
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

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
    .line 42224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42390
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 42391
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42392
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42393
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 42396
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
    .line 42224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    .registers 2

    .prologue
    .line 42259
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 42489
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42447
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42468
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42426
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    return v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42387
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

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
    .line 42486
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42444
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42465
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

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

.method public hasReturnUrls()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42423
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

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
    .line 42224
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

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
    .line 42224
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42337
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 42338
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5e

    .line 42343
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42345
    :sswitch_d
    return-object p0

    .line 42350
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42351
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 42355
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42356
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    goto :goto_0

    .line 42360
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42361
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 42365
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42366
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 42370
    :sswitch_42
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 42371
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 42372
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 42374
    :cond_53
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 42375
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    goto :goto_0

    .line 42338
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 42309
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 42325
    :cond_6
    :goto_6
    return-object p0

    .line 42310
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42311
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 42313
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasReturnUrls()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 42314
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getReturnUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 42316
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 42317
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 42319
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 42320
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 42322
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42323
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    goto :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 42508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 42510
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 42516
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42517
    return-object p0

    .line 42513
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42400
    if-nez p1, :cond_8

    .line 42401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42403
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42404
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 42406
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 42502
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 42504
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42505
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42492
    if-nez p1, :cond_8

    .line 42493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42495
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 42497
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42498
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42450
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42451
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    .line 42453
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42471
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42472
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    .line 42474
    return-object p0
.end method

.method public setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42429
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 42430
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    .line 42432
    return-object p0
.end method
