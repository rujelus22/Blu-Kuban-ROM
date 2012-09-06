.class public final Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SettingsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private isChild_:Z

.field private latestAppVersion_:I

.field private mandatoryAppVersion_:I

.field private me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

.field private userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19176
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19336
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 19421
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 19177
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 19178
    return-void
.end method

.method static synthetic access$25400(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19171
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25500()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 1

    .prologue
    .line 19171
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    .line 19220
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 19221
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 19224
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 1

    .prologue
    .line 19183
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 19181
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    .registers 3

    .prologue
    .line 19210
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    .line 19211
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 19212
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 19214
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    .registers 6

    .prologue
    .line 19228
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 19229
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19230
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 19231
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 19232
    or-int/lit8 v2, v2, 0x1

    .line 19234
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->access$25702(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 19235
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 19236
    or-int/lit8 v2, v2, 0x2

    .line 19238
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->latestAppVersion_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->latestAppVersion_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->access$25802(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;I)I

    .line 19239
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 19240
    or-int/lit8 v2, v2, 0x4

    .line 19242
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mandatoryAppVersion_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->mandatoryAppVersion_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->access$25902(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;I)I

    .line 19243
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 19244
    or-int/lit8 v2, v2, 0x8

    .line 19246
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->access$26002(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 19247
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 19248
    or-int/lit8 v2, v2, 0x10

    .line 19250
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->isChild_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->isChild_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->access$26102(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;Z)Z

    .line 19251
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->access$26202(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;I)I

    .line 19252
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 19187
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19188
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 19189
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19190
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->latestAppVersion_:I

    .line 19191
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19192
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mandatoryAppVersion_:I

    .line 19193
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19194
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 19195
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19196
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->isChild_:Z

    .line 19197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19198
    return-object p0
.end method

.method public clearIsChild()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 2

    .prologue
    .line 19478
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->isChild_:Z

    .line 19481
    return-object p0
.end method

.method public clearLatestAppVersion()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 2

    .prologue
    .line 19393
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19394
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->latestAppVersion_:I

    .line 19396
    return-object p0
.end method

.method public clearMandatoryAppVersion()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 2

    .prologue
    .line 19414
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19415
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mandatoryAppVersion_:I

    .line 19417
    return-object p0
.end method

.method public clearMe()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 2

    .prologue
    .line 19372
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 19374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19375
    return-object p0
.end method

.method public clearUserPreferences()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 2

    .prologue
    .line 19457
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 19459
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19460
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 19171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3

    .prologue
    .line 19202
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

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
    .line 19171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 19171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    .registers 2

    .prologue
    .line 19206
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getIsChild()Z
    .registers 2

    .prologue
    .line 19469
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->isChild_:Z

    return v0
.end method

.method public getLatestAppVersion()I
    .registers 2

    .prologue
    .line 19384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->latestAppVersion_:I

    return v0
.end method

.method public getMandatoryAppVersion()I
    .registers 2

    .prologue
    .line 19405
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mandatoryAppVersion_:I

    return v0
.end method

.method public getMe()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2

    .prologue
    .line 19341
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2

    .prologue
    .line 19426
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object v0
.end method

.method public hasIsChild()Z
    .registers 3

    .prologue
    .line 19466
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

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

.method public hasLatestAppVersion()Z
    .registers 3

    .prologue
    .line 19381
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

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

.method public hasMandatoryAppVersion()Z
    .registers 3

    .prologue
    .line 19402
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

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

.method public hasMe()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19338
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserPreferences()Z
    .registers 3

    .prologue
    .line 19423
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 19276
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
    .line 19171
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19171
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

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
    .line 19171
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19284
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 19285
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_6e

    .line 19290
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19292
    :sswitch_d
    return-object p0

    .line 19297
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 19298
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->hasMe()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 19299
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->getMe()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 19301
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19302
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->setMe(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    goto :goto_0

    .line 19306
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19307
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->latestAppVersion_:I

    goto :goto_0

    .line 19311
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19312
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mandatoryAppVersion_:I

    goto :goto_0

    .line 19316
    :sswitch_44
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    .line 19317
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->hasUserPreferences()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 19318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 19320
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19321
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->setUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    goto :goto_0

    .line 19325
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    :sswitch_60
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19326
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->isChild_:Z

    goto :goto_0

    .line 19285
    nop

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x18 -> :sswitch_37
        0x22 -> :sswitch_44
        0x28 -> :sswitch_60
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 19256
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19272
    :cond_6
    :goto_6
    return-object p0

    .line 19257
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasMe()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19258
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getMe()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mergeMe(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    .line 19260
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasLatestAppVersion()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 19261
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getLatestAppVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->setLatestAppVersion(I)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    .line 19263
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasMandatoryAppVersion()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 19264
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getMandatoryAppVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->setMandatoryAppVersion(I)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    .line 19266
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasUserPreferences()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 19267
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mergeUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    .line 19269
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasIsChild()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19270
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getIsChild()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->setIsChild(Z)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    goto :goto_6
.end method

.method public mergeMe(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19360
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 19362
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 19368
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19369
    return-object p0

    .line 19365
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    goto :goto_1f
.end method

.method public mergeUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19445
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 19447
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 19453
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19454
    return-object p0

    .line 19450
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    goto :goto_20
.end method

.method public setIsChild(Z)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19472
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19473
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->isChild_:Z

    .line 19475
    return-object p0
.end method

.method public setLatestAppVersion(I)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19387
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19388
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->latestAppVersion_:I

    .line 19390
    return-object p0
.end method

.method public setMandatoryAppVersion(I)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19408
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19409
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mandatoryAppVersion_:I

    .line 19411
    return-object p0
.end method

.method public setMe(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19354
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 19356
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19357
    return-object p0
.end method

.method public setMe(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19344
    if-nez p1, :cond_8

    .line 19345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19347
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 19349
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19350
    return-object p0
.end method

.method public setUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19439
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 19441
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19442
    return-object p0
.end method

.method public setUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19429
    if-nez p1, :cond_8

    .line 19430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19432
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 19434
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->bitField0_:I

    .line 19435
    return-object p0
.end method
