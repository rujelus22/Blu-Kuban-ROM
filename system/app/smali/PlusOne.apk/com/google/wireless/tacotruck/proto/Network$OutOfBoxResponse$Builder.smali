.class public final Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private continueUrl_:Ljava/lang/Object;

.field private failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

.field private redirectUrl_:Ljava/lang/Object;

.field private signupComplete_:Z

.field private smsSent_:Z

.field private view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38342
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 38516
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 38637
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38343
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->maybeForceBuilderInitialization()V

    .line 38344
    return-void
.end method

.method static synthetic access$52900(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38337
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$53000()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 1

    .prologue
    .line 38337
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38387
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    .line 38388
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 38389
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 38392
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 1

    .prologue
    .line 38349
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 38347
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 6

    .prologue
    .line 38396
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 38397
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38398
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 38399
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 38400
    or-int/lit8 v2, v2, 0x1

    .line 38402
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$53202(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38403
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 38404
    or-int/lit8 v2, v2, 0x2

    .line 38406
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$53302(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Z)Z

    .line 38407
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 38408
    or-int/lit8 v2, v2, 0x4

    .line 38410
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$53402(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38411
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 38412
    or-int/lit8 v2, v2, 0x8

    .line 38414
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$53502(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Z)Z

    .line 38415
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 38416
    or-int/lit8 v2, v2, 0x10

    .line 38418
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$53602(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38419
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 38420
    or-int/lit8 v2, v2, 0x20

    .line 38422
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$53702(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38423
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$53802(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;I)I

    .line 38424
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38353
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 38354
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38355
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38356
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    .line 38357
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 38359
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38360
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    .line 38361
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38362
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38363
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38365
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38366
    return-object p0
.end method

.method public clearContinueUrl()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 38704
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38705
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38707
    return-object p0
.end method

.method public clearFailureView()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 38673
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38675
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38676
    return-object p0
.end method

.method public clearRedirectUrl()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 38604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38605
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 38607
    return-object p0
.end method

.method public clearSignupComplete()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 38573
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    .line 38576
    return-object p0
.end method

.method public clearSmsSent()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 38630
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    .line 38633
    return-object p0
.end method

.method public clearView()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 38552
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38554
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38555
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 38337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3

    .prologue
    .line 38370
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

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
    .line 38337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContinueUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 38685
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38686
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 38687
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38688
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38691
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
    .line 38337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 2

    .prologue
    .line 38374
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 38642
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 38585
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 38586
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 38587
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38588
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 38591
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

.method public getSignupComplete()Z
    .registers 2

    .prologue
    .line 38564
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    return v0
.end method

.method public getSmsSent()Z
    .registers 2

    .prologue
    .line 38621
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    return v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 38521
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method public hasContinueUrl()Z
    .registers 3

    .prologue
    .line 38682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

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

.method public hasFailureView()Z
    .registers 3

    .prologue
    .line 38639
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

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

.method public hasRedirectUrl()Z
    .registers 3

    .prologue
    .line 38582
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

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

.method public hasSignupComplete()Z
    .registers 3

    .prologue
    .line 38561
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

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

.method public hasSmsSent()Z
    .registers 3

    .prologue
    .line 38618
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

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

.method public hasView()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38518
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38661
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 38663
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38669
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38670
    return-object p0

    .line 38666
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    goto :goto_20
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
    .line 38337
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

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
    .line 38337
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38459
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 38460
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_7a

    .line 38465
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38467
    :sswitch_d
    return-object p0

    .line 38472
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    .line 38473
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->hasView()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 38474
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    .line 38476
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 38477
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    goto :goto_0

    .line 38481
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38482
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    goto :goto_0

    .line 38486
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38487
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 38491
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38492
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    goto :goto_0

    .line 38496
    :sswitch_51
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    .line 38497
    .restart local v0       #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->hasFailureView()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 38498
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->getFailureView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    .line 38500
    :cond_62
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 38501
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    goto :goto_0

    .line 38505
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    :sswitch_6d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38506
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 38460
    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x20 -> :sswitch_44
        0x2a -> :sswitch_51
        0x32 -> :sswitch_6d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 38428
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 38447
    :cond_6
    :goto_6
    return-object p0

    .line 38429
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasView()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 38430
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 38432
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasSignupComplete()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 38433
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSignupComplete()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setSignupComplete(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 38435
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasRedirectUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 38436
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setRedirectUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 38438
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasSmsSent()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 38439
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSmsSent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setSmsSent(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 38441
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasFailureView()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 38442
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getFailureView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 38444
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasContinueUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38445
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setContinueUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    goto :goto_6
.end method

.method public mergeView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38540
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 38542
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38548
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38549
    return-object p0

    .line 38545
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    goto :goto_1f
.end method

.method public setContinueUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38695
    if-nez p1, :cond_8

    .line 38696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38698
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38699
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38701
    return-object p0
.end method

.method public setFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 38655
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38657
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38658
    return-object p0
.end method

.method public setFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38645
    if-nez p1, :cond_8

    .line 38646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38648
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38650
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38651
    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38595
    if-nez p1, :cond_8

    .line 38596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38598
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38599
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 38601
    return-object p0
.end method

.method public setSignupComplete(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38567
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38568
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    .line 38570
    return-object p0
.end method

.method public setSmsSent(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38625
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    .line 38627
    return-object p0
.end method

.method public setView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 38534
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38536
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38537
    return-object p0
.end method

.method public setView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38524
    if-nez p1, :cond_8

    .line 38525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38527
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 38530
    return-object p0
.end method
