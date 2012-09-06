.class public final Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$EventOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;",
        ">;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private broadcast_:Z

.field private hangout_:Z

.field private hideGuestList_:Z

.field private openEventAcl_:Z

.field private openPhotoAcl_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 255
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 407
    iput-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openEventAcl_:Z

    .line 428
    iput-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openPhotoAcl_:Z

    .line 256
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->maybeForceBuilderInitialization()V

    .line 257
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 1

    .prologue
    .line 250
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 1

    .prologue
    .line 262
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 260
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    .registers 3

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    .line 290
    .local v0, result:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 291
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 293
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->build()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    .registers 6

    .prologue
    .line 307
    new-instance v1, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V

    .line 308
    .local v1, result:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 309
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 310
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 311
    or-int/lit8 v2, v2, 0x1

    .line 313
    :cond_10
    iget-boolean v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openEventAcl_:Z

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openEventAcl_:Z
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->access$302(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z

    .line 314
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 315
    or-int/lit8 v2, v2, 0x2

    .line 317
    :cond_1c
    iget-boolean v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openPhotoAcl_:Z

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openPhotoAcl_:Z
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->access$402(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z

    .line 318
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 319
    or-int/lit8 v2, v2, 0x4

    .line 321
    :cond_28
    iget-boolean v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->hideGuestList_:Z

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hideGuestList_:Z
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->access$502(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z

    .line 322
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 323
    or-int/lit8 v2, v2, 0x8

    .line 325
    :cond_35
    iget-boolean v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->hangout_:Z

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hangout_:Z
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->access$602(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z

    .line 326
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 327
    or-int/lit8 v2, v2, 0x10

    .line 329
    :cond_42
    iget-boolean v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->broadcast_:Z

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->broadcast_:Z
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->access$702(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z

    .line 330
    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->access$802(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;I)I

    .line 331
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 266
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 267
    iput-boolean v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openEventAcl_:Z

    .line 268
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 269
    iput-boolean v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openPhotoAcl_:Z

    .line 270
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 271
    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->hideGuestList_:Z

    .line 272
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 273
    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->hangout_:Z

    .line 274
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 275
    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->broadcast_:Z

    .line 276
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 277
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 3

    .prologue
    .line 281
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

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
    .line 250
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    .registers 2

    .prologue
    .line 285
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 335
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 351
    :cond_6
    :goto_6
    return-object p0

    .line 336
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hasOpenEventAcl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 337
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getOpenEventAcl()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->setOpenEventAcl(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    .line 339
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hasOpenPhotoAcl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 340
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getOpenPhotoAcl()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->setOpenPhotoAcl(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    .line 342
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hasHideGuestList()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 343
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getHideGuestList()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->setHideGuestList(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    .line 345
    :cond_2e
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hasHangout()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 346
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getHangout()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->setHangout(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    .line 348
    :cond_3b
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hasBroadcast()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 349
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getBroadcast()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->setBroadcast(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 364
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 369
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    :sswitch_d
    return-object p0

    .line 376
    :sswitch_e
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 377
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openEventAcl_:Z

    goto :goto_0

    .line 381
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 382
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openPhotoAcl_:Z

    goto :goto_0

    .line 386
    :sswitch_28
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 387
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->hideGuestList_:Z

    goto :goto_0

    .line 391
    :sswitch_35
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 392
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->hangout_:Z

    goto :goto_0

    .line 396
    :sswitch_42
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 397
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->broadcast_:Z

    goto :goto_0

    .line 364
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
    .end sparse-switch
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
    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 250
    check-cast p1, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

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
    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBroadcast(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 499
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 500
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->broadcast_:Z

    .line 502
    return-object p0
.end method

.method public setHangout(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 478
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 479
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->hangout_:Z

    .line 481
    return-object p0
.end method

.method public setHideGuestList(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 457
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 458
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->hideGuestList_:Z

    .line 460
    return-object p0
.end method

.method public setOpenEventAcl(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 415
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 416
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openEventAcl_:Z

    .line 418
    return-object p0
.end method

.method public setOpenPhotoAcl(Z)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 436
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->bitField0_:I

    .line 437
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->openPhotoAcl_:Z

    .line 439
    return-object p0
.end method
