.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HangoutInviteNotification.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;",
        ">;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotificationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

.field private context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

.field private dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

.field private hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

.field private notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

.field private status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 670
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    .line 713
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->RINGING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 737
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    .line 761
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;->NOTIFICATION_RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    .line 785
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    .line 809
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->UNKNOWN:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 473
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->maybeForceBuilderInitialization()V

    .line 474
    return-void
.end method

.method static synthetic access$000(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->buildParsed()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 1

    .prologue
    .line 467
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    .line 518
    .local v0, result:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 519
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 522
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 1

    .prologue
    .line 479
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 477
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    .registers 3

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    .line 509
    .local v0, result:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 510
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 512
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->build()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    .registers 6

    .prologue
    .line 526
    new-instance v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$1;)V

    .line 527
    .local v1, result:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 528
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 529
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 530
    or-int/lit8 v2, v2, 0x1

    .line 532
    :cond_10
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->access$302(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    .line 533
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 534
    or-int/lit8 v2, v2, 0x2

    .line 536
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->access$402(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 537
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 538
    or-int/lit8 v2, v2, 0x4

    .line 540
    :cond_28
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->access$502(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    .line 541
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 542
    or-int/lit8 v2, v2, 0x8

    .line 544
    :cond_35
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->access$602(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    .line 545
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 546
    or-int/lit8 v2, v2, 0x10

    .line 548
    :cond_42
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->access$702(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    .line 549
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 550
    or-int/lit8 v2, v2, 0x20

    .line 552
    :cond_4f
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->access$802(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 553
    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->access$902(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;I)I

    .line 554
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 2

    .prologue
    .line 483
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 484
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    .line 485
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 486
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->RINGING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 487
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 488
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    .line 489
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 490
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;->NOTIFICATION_RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    .line 491
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 492
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    .line 493
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 494
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->UNKNOWN:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 495
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 496
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 3

    .prologue
    .line 500
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

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
    .line 467
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    .registers 2

    .prologue
    .line 504
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    return-object v0
.end method

.method public hasContext()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 672
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 581
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->hasContext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 589
    :cond_7
    :goto_7
    return v0

    .line 585
    :cond_8
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->getContext()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 589
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeContext(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 694
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 696
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    .line 702
    :goto_1f
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 703
    return-object p0

    .line 699
    :cond_26
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 558
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 577
    :cond_6
    :goto_6
    return-object p0

    .line 559
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 560
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getContext()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->mergeContext(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    .line 562
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 563
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getStatus()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->setStatus(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    .line 565
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hasCommand()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 566
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getCommand()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->setCommand(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    .line 568
    :cond_2e
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hasNotificationType()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 569
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getNotificationType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->setNotificationType(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    .line 571
    :cond_3b
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hasHangoutType()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 572
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getHangoutType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->setHangoutType(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    .line 574
    :cond_48
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hasDismissReason()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 575
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getDismissReason()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->setDismissReason(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 598
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_8a

    .line 603
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 605
    :sswitch_d
    return-object p0

    .line 610
    :sswitch_e
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v1

    .line 611
    .local v1, subBuilder:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->hasContext()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 612
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->getContext()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 614
    :cond_1f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 615
    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->setContext(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    goto :goto_0

    .line 619
    .end local v1           #subBuilder:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 620
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    move-result-object v3

    .line 621
    .local v3, value:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
    if-eqz v3, :cond_0

    .line 622
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 623
    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    goto :goto_0

    .line 628
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 629
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    move-result-object v3

    .line 630
    .local v3, value:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;
    if-eqz v3, :cond_0

    .line 631
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 632
    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    goto :goto_0

    .line 637
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;
    :sswitch_50
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 638
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    move-result-object v3

    .line 639
    .local v3, value:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;
    if-eqz v3, :cond_0

    .line 640
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 641
    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    goto :goto_0

    .line 646
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;
    :sswitch_63
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 647
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    move-result-object v3

    .line 648
    .local v3, value:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
    if-eqz v3, :cond_0

    .line 649
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 650
    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    goto :goto_0

    .line 655
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
    :sswitch_76
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 656
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    move-result-object v3

    .line 657
    .local v3, value:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;
    if-eqz v3, :cond_0

    .line 658
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 659
    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    goto/16 :goto_0

    .line 598
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x18 -> :sswitch_3d
        0x28 -> :sswitch_50
        0x30 -> :sswitch_63
        0x38 -> :sswitch_76
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
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 467
    check-cast p1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

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
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCommand(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 745
    if-nez p1, :cond_8

    .line 746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 748
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 749
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    .line 751
    return-object p0
.end method

.method public setContext(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 678
    if-nez p1, :cond_8

    .line 679
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 681
    :cond_8
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    .line 683
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 684
    return-object p0
.end method

.method public setDismissReason(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 817
    if-nez p1, :cond_8

    .line 818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 820
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 821
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 823
    return-object p0
.end method

.method public setHangoutType(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 793
    if-nez p1, :cond_8

    .line 794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 796
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 797
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    .line 799
    return-object p0
.end method

.method public setNotificationType(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 769
    if-nez p1, :cond_8

    .line 770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 772
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 773
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    .line 775
    return-object p0
.end method

.method public setStatus(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 721
    if-nez p1, :cond_8

    .line 722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 724
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->bitField0_:I

    .line 725
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 727
    return-object p0
.end method
