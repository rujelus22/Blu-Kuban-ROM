.class public final Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private continueUrl_:Ljava/lang/Object;

.field private failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private redirectUrl_:Ljava/lang/Object;

.field private signupComplete_:Z

.field private smsSent_:Z

.field private view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38719
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .line 38720
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->initFields()V

    .line 38721
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 38064
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 38190
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedIsInitialized:B

    .line 38222
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedSerializedSize:I

    .line 38065
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38059
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 38066
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38190
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedIsInitialized:B

    .line 38222
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedSerializedSize:I

    .line 38066
    return-void
.end method

.method static synthetic access$53202(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38059
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object p1
.end method

.method static synthetic access$53302(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38059
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    return p1
.end method

.method static synthetic access$53402(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38059
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53502(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38059
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    return p1
.end method

.method static synthetic access$53602(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38059
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object p1
.end method

.method static synthetic access$53702(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38059
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53802(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38059
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    return p1
.end method

.method private getContinueUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38171
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    .line 38172
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38173
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38175
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    .line 38178
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 1

    .prologue
    .line 38070
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    return-object v0
.end method

.method private getRedirectUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38119
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    .line 38120
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38121
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38123
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    .line 38126
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38183
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38184
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    .line 38185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    .line 38186
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    .line 38187
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    .line 38189
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 1

    .prologue
    .line 38330
    #calls: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->access$53000()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38266
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->access$52900(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContinueUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38157
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    .line 38158
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38159
    check-cast v1, Ljava/lang/String;

    .line 38167
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38161
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38163
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38164
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38165
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38167
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38059
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 2

    .prologue
    .line 38074
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    return-object v0
.end method

.method public getFailureView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 38147
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38105
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    .line 38106
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38107
    check-cast v1, Ljava/lang/String;

    .line 38115
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38109
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38111
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38112
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38113
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38115
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 38224
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedSerializedSize:I

    .line 38225
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 38253
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 38227
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 38228
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 38229
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38232
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 38233
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38236
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 38237
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getRedirectUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38240
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 38241
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38244
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 38245
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38248
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_66

    .line 38249
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getContinueUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38252
    :cond_66
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 38253
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getSignupComplete()Z
    .registers 2

    .prologue
    .line 38095
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    return v0
.end method

.method public getSmsSent()Z
    .registers 2

    .prologue
    .line 38137
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    return v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 38085
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method public hasContinueUrl()Z
    .registers 3

    .prologue
    .line 38154
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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
    .line 38144
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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
    .line 38102
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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
    .line 38092
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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
    .line 38134
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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

    .line 38082
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 38192
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedIsInitialized:B

    .line 38193
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 38196
    :goto_8
    return v1

    .line 38193
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 38195
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 38260
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 38201
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSerializedSize()I

    .line 38202
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 38203
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 38205
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 38206
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 38208
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 38209
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getRedirectUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38211
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 38212
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 38214
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 38215
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 38217
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    .line 38218
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getContinueUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38220
    :cond_55
    return-void
.end method
