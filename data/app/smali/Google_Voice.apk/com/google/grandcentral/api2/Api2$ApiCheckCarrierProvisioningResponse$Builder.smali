.class public final Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private accountAlreadyProvisioned_:Z

.field private alreadyProvisioned_:Z

.field private bitField0_:I

.field private dataDeletedWhenProvisioned_:Z

.field private phoneNumber_:Ljava/lang/Object;

.field private provisionError_:I

.field private provisionable_:Z

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private verifyNeeded_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41201
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41351
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 41394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41202
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->maybeForceBuilderInitialization()V

    .line 41203
    return-void
.end method

.method static synthetic access$49500()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 1

    .prologue
    .line 41196
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 1

    .prologue
    .line 41208
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41206
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 3

    .prologue
    .line 41241
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v0

    .line 41242
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 41243
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 41245
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 6

    .prologue
    .line 41249
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 41250
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41251
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 41252
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 41253
    or-int/lit8 v2, v2, 0x1

    .line 41255
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$49702(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 41256
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 41257
    or-int/lit8 v2, v2, 0x2

    .line 41259
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$49802(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41260
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 41261
    or-int/lit8 v2, v2, 0x4

    .line 41263
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionError_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionError_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$49902(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;I)I

    .line 41264
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 41265
    or-int/lit8 v2, v2, 0x8

    .line 41267
    :cond_35
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionable_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionable_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$50002(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z

    .line 41268
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 41269
    or-int/lit8 v2, v2, 0x10

    .line 41271
    :cond_42
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->alreadyProvisioned_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->alreadyProvisioned_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$50102(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z

    .line 41272
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 41273
    or-int/lit8 v2, v2, 0x20

    .line 41275
    :cond_4f
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->verifyNeeded_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->verifyNeeded_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$50202(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z

    .line 41276
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 41277
    or-int/lit8 v2, v2, 0x40

    .line 41279
    :cond_5c
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->dataDeletedWhenProvisioned_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->dataDeletedWhenProvisioned_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$50302(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z

    .line 41280
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 41281
    or-int/lit16 v2, v2, 0x80

    .line 41283
    :cond_69
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->accountAlreadyProvisioned_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->accountAlreadyProvisioned_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$50402(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z

    .line 41284
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$50502(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;I)I

    .line 41285
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41212
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41213
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 41214
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41216
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41217
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionError_:I

    .line 41218
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41219
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionable_:Z

    .line 41220
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41221
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->alreadyProvisioned_:Z

    .line 41222
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41223
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->verifyNeeded_:Z

    .line 41224
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41225
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->dataDeletedWhenProvisioned_:Z

    .line 41226
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41227
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->accountAlreadyProvisioned_:Z

    .line 41228
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41229
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountAlreadyProvisioned()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41566
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->accountAlreadyProvisioned_:Z

    .line 41569
    return-object p0
.end method

.method public clearAlreadyProvisioned()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41503
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->alreadyProvisioned_:Z

    .line 41506
    return-object p0
.end method

.method public clearDataDeletedWhenProvisioned()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41545
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->dataDeletedWhenProvisioned_:Z

    .line 41548
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41430
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41431
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41433
    return-object p0
.end method

.method public clearProvisionError()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41461
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41462
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionError_:I

    .line 41464
    return-object p0
.end method

.method public clearProvisionable()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41482
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionable_:Z

    .line 41485
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41387
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 41389
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41390
    return-object p0
.end method

.method public clearVerifyNeeded()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41524
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->verifyNeeded_:Z

    .line 41527
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3

    .prologue
    .line 41233
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

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
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountAlreadyProvisioned()Z
    .registers 2

    .prologue
    .line 41557
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->accountAlreadyProvisioned_:Z

    return v0
.end method

.method public getAlreadyProvisioned()Z
    .registers 2

    .prologue
    .line 41494
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->alreadyProvisioned_:Z

    return v0
.end method

.method public getDataDeletedWhenProvisioned()Z
    .registers 2

    .prologue
    .line 41536
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->dataDeletedWhenProvisioned_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 2

    .prologue
    .line 41237
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41399
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41400
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41401
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41402
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41405
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

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41410
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41411
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41412
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41414
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41417
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

.method public getProvisionError()I
    .registers 2

    .prologue
    .line 41452
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionError_:I

    return v0
.end method

.method public getProvisionable()Z
    .registers 2

    .prologue
    .line 41473
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionable_:Z

    return v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 41356
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getVerifyNeeded()Z
    .registers 2

    .prologue
    .line 41515
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->verifyNeeded_:Z

    return v0
.end method

.method public hasAccountAlreadyProvisioned()Z
    .registers 3

    .prologue
    .line 41554
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

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

.method public hasAlreadyProvisioned()Z
    .registers 3

    .prologue
    .line 41491
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

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

.method public hasDataDeletedWhenProvisioned()Z
    .registers 3

    .prologue
    .line 41533
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 41396
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

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

.method public hasProvisionError()Z
    .registers 3

    .prologue
    .line 41449
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

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

.method public hasProvisionable()Z
    .registers 3

    .prologue
    .line 41470
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41353
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVerifyNeeded()Z
    .registers 3

    .prologue
    .line 41512
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 41320
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 41328
    :cond_7
    :goto_7
    return v0

    .line 41324
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41328
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 41289
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 41316
    :cond_6
    :goto_6
    return-object p0

    .line 41290
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 41291
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    .line 41293
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 41294
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41295
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->access$49800(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41298
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasProvisionError()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 41299
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getProvisionError()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->setProvisionError(I)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    .line 41301
    :cond_33
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasProvisionable()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 41302
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getProvisionable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->setProvisionable(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    .line 41304
    :cond_40
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasAlreadyProvisioned()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 41305
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getAlreadyProvisioned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->setAlreadyProvisioned(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    .line 41307
    :cond_4d
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasVerifyNeeded()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 41308
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getVerifyNeeded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->setVerifyNeeded(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    .line 41310
    :cond_5a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasDataDeletedWhenProvisioned()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 41311
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getDataDeletedWhenProvisioned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->setDataDeletedWhenProvisioned(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    .line 41313
    :cond_67
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasAccountAlreadyProvisioned()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41314
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getAccountAlreadyProvisioned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->setAccountAlreadyProvisioned(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41335
    const/4 v2, 0x0

    .line 41337
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 41342
    if-eqz v2, :cond_10

    .line 41343
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    .line 41346
    :cond_10
    return-object p0

    .line 41338
    :catch_11
    move-exception v1

    .line 41339
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-object v2, v0

    .line 41340
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 41342
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 41343
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

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
    .line 41196
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41196
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

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
    .line 41196
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41375
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 41377
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 41383
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41384
    return-object p0

    .line 41380
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setAccountAlreadyProvisioned(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41560
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41561
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->accountAlreadyProvisioned_:Z

    .line 41563
    return-object p0
.end method

.method public setAlreadyProvisioned(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41497
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41498
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->alreadyProvisioned_:Z

    .line 41500
    return-object p0
.end method

.method public setDataDeletedWhenProvisioned(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41539
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41540
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->dataDeletedWhenProvisioned_:Z

    .line 41542
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41421
    if-nez p1, :cond_8

    .line 41422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41424
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41425
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41427
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41437
    if-nez p1, :cond_8

    .line 41438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41440
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41441
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 41443
    return-object p0
.end method

.method public setProvisionError(I)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41455
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41456
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionError_:I

    .line 41458
    return-object p0
.end method

.method public setProvisionable(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41476
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41477
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->provisionable_:Z

    .line 41479
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 41369
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 41371
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41372
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41359
    if-nez p1, :cond_8

    .line 41360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41362
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 41364
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41365
    return-object p0
.end method

.method public setVerifyNeeded(Z)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41518
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->bitField0_:I

    .line 41519
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->verifyNeeded_:Z

    .line 41521
    return-object p0
.end method
