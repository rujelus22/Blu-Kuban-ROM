.class public final Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private smsDestination_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private verificationToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27991
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28106
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 28149
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    .line 27992
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 27993
    return-void
.end method

.method static synthetic access$33400()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 1

    .prologue
    .line 27986
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 1

    .prologue
    .line 27998
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27996
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 3

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    .line 28022
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28023
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28025
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 6

    .prologue
    .line 28029
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 28030
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28031
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28032
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28033
    or-int/lit8 v2, v2, 0x1

    .line 28035
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->access$33602(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 28036
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28037
    or-int/lit8 v2, v2, 0x2

    .line 28039
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->access$33702(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28040
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 28041
    or-int/lit8 v2, v2, 0x4

    .line 28043
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->access$33802(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28044
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->access$33902(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;I)I

    .line 28045
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 28002
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28003
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 28004
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28005
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28006
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28007
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28008
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28009
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSmsDestination()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 28185
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28186
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getSmsDestination()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28188
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 28142
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 28144
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28145
    return-object p0
.end method

.method public clearVerificationToken()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 28238
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28239
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getVerificationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28241
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 3

    .prologue
    .line 28013
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

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
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 2

    .prologue
    .line 28017
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDestination()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28154
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28155
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28156
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28157
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28160
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

.method public getSmsDestinationBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28165
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28166
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28167
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28169
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28172
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

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 28111
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getVerificationToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28207
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28208
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28209
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28210
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28213
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

.method public getVerificationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28218
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28219
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28220
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28222
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28225
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

.method public hasSmsDestination()Z
    .registers 3

    .prologue
    .line 28151
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28108
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVerificationToken()Z
    .registers 3

    .prologue
    .line 28204
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28067
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 28083
    :cond_7
    :goto_7
    return v0

    .line 28071
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->hasSmsDestination()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28075
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->hasVerificationToken()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28079
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28083
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 28049
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28063
    :cond_6
    :goto_6
    return-object p0

    .line 28050
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28051
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    .line 28053
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->hasSmsDestination()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 28054
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28055
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->access$33700(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28058
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->hasVerificationToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28059
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28060
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->access$33800(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28090
    const/4 v2, 0x0

    .line 28092
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 28097
    if-eqz v2, :cond_10

    .line 28098
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    .line 28101
    :cond_10
    return-object p0

    .line 28093
    :catch_11
    move-exception v1

    .line 28094
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-object v2, v0

    .line 28095
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 28097
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 28098
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    :cond_21
    throw v3
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
    .line 27986
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27986
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

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
    .line 27986
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 28130
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 28132
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 28138
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28139
    return-object p0

    .line 28135
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setSmsDestination(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28176
    if-nez p1, :cond_8

    .line 28177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28179
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28180
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28182
    return-object p0
.end method

.method public setSmsDestinationBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28192
    if-nez p1, :cond_8

    .line 28193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28195
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28196
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->smsDestination_:Ljava/lang/Object;

    .line 28198
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 28124
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 28126
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28127
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28114
    if-nez p1, :cond_8

    .line 28115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28117
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 28119
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28120
    return-object p0
.end method

.method public setVerificationToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28229
    if-nez p1, :cond_8

    .line 28230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28232
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28233
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28235
    return-object p0
.end method

.method public setVerificationTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28245
    if-nez p1, :cond_8

    .line 28246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28248
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->bitField0_:I

    .line 28249
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28251
    return-object p0
.end method
