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

.field private postMessageTargetOrigin_:Ljava/lang/Object;

.field private redirectUrl_:Ljava/lang/Object;

.field private signupComplete_:Z

.field private smsSent_:Z

.field private view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39088
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 39276
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39340
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 39397
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39440
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 39476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 39089
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->maybeForceBuilderInitialization()V

    .line 39090
    return-void
.end method

.method static synthetic access$53700(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39083
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$53800()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 1

    .prologue
    .line 39083
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
    .line 39135
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    .line 39136
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 39137
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 39140
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 1

    .prologue
    .line 39095
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 39093
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39083
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 3

    .prologue
    .line 39126
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    .line 39127
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 39128
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 39130
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39083
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 6

    .prologue
    .line 39144
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 39145
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39146
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 39147
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 39148
    or-int/lit8 v2, v2, 0x1

    .line 39150
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$54002(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39151
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 39152
    or-int/lit8 v2, v2, 0x2

    .line 39154
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$54102(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Z)Z

    .line 39155
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 39156
    or-int/lit8 v2, v2, 0x4

    .line 39158
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$54202(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39159
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 39160
    or-int/lit8 v2, v2, 0x8

    .line 39162
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$54302(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Z)Z

    .line 39163
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 39164
    or-int/lit8 v2, v2, 0x10

    .line 39166
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$54402(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39167
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 39168
    or-int/lit8 v2, v2, 0x20

    .line 39170
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$54502(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39171
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 39172
    or-int/lit8 v2, v2, 0x40

    .line 39174
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->postMessageTargetOrigin_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$54602(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39175
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->access$54702(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;I)I

    .line 39176
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39083
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39083
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 39099
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 39100
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39101
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39102
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    .line 39103
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 39105
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39106
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    .line 39107
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39108
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39109
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 39111
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 39113
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39114
    return-object p0
.end method

.method public clearContinueUrl()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 39464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39465
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 39467
    return-object p0
.end method

.method public clearFailureView()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 39433
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39436
    return-object p0
.end method

.method public clearPostMessageTargetOrigin()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 39500
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39501
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getPostMessageTargetOrigin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 39503
    return-object p0
.end method

.method public clearRedirectUrl()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 39364
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39365
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 39367
    return-object p0
.end method

.method public clearSignupComplete()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 39333
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    .line 39336
    return-object p0
.end method

.method public clearSmsSent()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 39390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    .line 39393
    return-object p0
.end method

.method public clearView()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 39312
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39314
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39315
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 39083
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39083
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3

    .prologue
    .line 39118
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
    .line 39083
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContinueUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39445
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 39446
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 39447
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39448
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 39451
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
    .line 39083
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39083
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 2

    .prologue
    .line 39122
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 39402
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method public getPostMessageTargetOrigin()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39481
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 39482
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 39483
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39484
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 39487
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

.method public getRedirectUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39345
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 39346
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 39347
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39348
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 39351
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
    .line 39324
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    return v0
.end method

.method public getSmsSent()Z
    .registers 2

    .prologue
    .line 39381
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    return v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 39281
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method public hasContinueUrl()Z
    .registers 3

    .prologue
    .line 39442
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
    .line 39399
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

.method public hasPostMessageTargetOrigin()Z
    .registers 3

    .prologue
    .line 39478
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

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

.method public hasRedirectUrl()Z
    .registers 3

    .prologue
    .line 39342
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
    .line 39321
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
    .line 39378
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

    .line 39278
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 39206
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 39421
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 39423
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39429
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39430
    return-object p0

    .line 39426
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
    .line 39083
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39083
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

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
    .line 39083
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
    .line 39214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 39215
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_88

    .line 39220
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39222
    :sswitch_d
    return-object p0

    .line 39227
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    .line 39228
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->hasView()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 39229
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    .line 39231
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 39232
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    goto :goto_0

    .line 39236
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39237
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    goto :goto_0

    .line 39241
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39242
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 39246
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39247
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    goto :goto_0

    .line 39251
    :sswitch_51
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    .line 39252
    .restart local v0       #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->hasFailureView()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 39253
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->getFailureView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    .line 39255
    :cond_62
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 39256
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    goto :goto_0

    .line 39260
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    :sswitch_6d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39261
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 39265
    :sswitch_7a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39266
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 39215
    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x20 -> :sswitch_44
        0x2a -> :sswitch_51
        0x32 -> :sswitch_6d
        0x3a -> :sswitch_7a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 39180
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 39202
    :cond_6
    :goto_6
    return-object p0

    .line 39181
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasView()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 39182
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 39184
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasSignupComplete()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 39185
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSignupComplete()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setSignupComplete(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 39187
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasRedirectUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 39188
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setRedirectUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 39190
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasSmsSent()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 39191
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSmsSent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setSmsSent(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 39193
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasFailureView()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 39194
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getFailureView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 39196
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasContinueUrl()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 39197
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setContinueUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    .line 39199
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasPostMessageTargetOrigin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39200
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getPostMessageTargetOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->setPostMessageTargetOrigin(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    goto :goto_6
.end method

.method public mergeView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 39300
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 39302
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39308
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39309
    return-object p0

    .line 39305
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    goto :goto_1f
.end method

.method public setContinueUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39455
    if-nez p1, :cond_8

    .line 39456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39458
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39459
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->continueUrl_:Ljava/lang/Object;

    .line 39461
    return-object p0
.end method

.method public setFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 39415
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39417
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39418
    return-object p0
.end method

.method public setFailureView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39405
    if-nez p1, :cond_8

    .line 39406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39408
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39410
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39411
    return-object p0
.end method

.method public setPostMessageTargetOrigin(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39491
    if-nez p1, :cond_8

    .line 39492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39494
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39495
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 39497
    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39355
    if-nez p1, :cond_8

    .line 39356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39358
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39359
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 39361
    return-object p0
.end method

.method public setSignupComplete(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39327
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39328
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->signupComplete_:Z

    .line 39330
    return-object p0
.end method

.method public setSmsSent(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39385
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->smsSent_:Z

    .line 39387
    return-object p0
.end method

.method public setView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 39294
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39296
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39297
    return-object p0
.end method

.method public setView(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39284
    if-nez p1, :cond_8

    .line 39285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39287
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 39289
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->bitField0_:I

    .line 39290
    return-object p0
.end method
