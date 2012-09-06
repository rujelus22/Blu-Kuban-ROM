.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HangoutInviteNotification.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$1;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

.field private context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

.field private dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

.field private hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

.field private status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 836
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;-><init>(Z)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    .line 837
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->initFields()V

    .line 838
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 312
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedIsInitialized:B

    .line 352
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 312
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedIsInitialized:B

    .line 352
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 305
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    .line 306
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->RINGING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 307
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    .line 308
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;->NOTIFICATION_RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    .line 309
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    .line 310
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->UNKNOWN:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 311
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 1

    .prologue
    .line 460
    #calls: Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->access$100()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 463
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    #calls: Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->buildParsed()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;->access$000(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCommand()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    return-object v0
.end method

.method public getContext()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDismissReason()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    return-object v0
.end method

.method public getHangoutType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    return-object v0
.end method

.method public getNotificationType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 354
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedSerializedSize:I

    .line 355
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 383
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 357
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 358
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 359
    iget-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 362
    :cond_17
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 363
    iget-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    invoke-virtual {v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 366
    :cond_28
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 367
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    invoke-virtual {v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 370
    :cond_3b
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4f

    .line 371
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    invoke-virtual {v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 374
    :cond_4f
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_63

    .line 375
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    invoke-virtual {v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 378
    :cond_63
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_77

    .line 379
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    invoke-virtual {v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 382
    :cond_77
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedSerializedSize:I

    move v1, v0

    .line 383
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    return-object v0
.end method

.method public hasCommand()Z
    .registers 3

    .prologue
    .line 268
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

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

.method public hasContext()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 248
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDismissReason()Z
    .registers 3

    .prologue
    .line 298
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

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

.method public hasHangoutType()Z
    .registers 3

    .prologue
    .line 288
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

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

.method public hasNotificationType()Z
    .registers 3

    .prologue
    .line 278
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

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
    .line 258
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    iget-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedIsInitialized:B

    .line 315
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 326
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 315
    goto :goto_9

    .line 317
    :cond_c
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hasContext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 318
    iput-byte v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedIsInitialized:B

    move v1, v2

    .line 319
    goto :goto_9

    .line 321
    :cond_16
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getContext()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    .line 322
    iput-byte v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedIsInitialized:B

    move v1, v2

    .line 323
    goto :goto_9

    .line 325
    :cond_24
    iput-byte v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 2

    .prologue
    .line 461
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;
    .registers 2

    .prologue
    .line 465
    invoke-static {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 331
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getSerializedSize()I

    .line 332
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 333
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->context_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 335
    :cond_10
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 336
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->status_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 338
    :cond_1f
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 339
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->command_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 341
    :cond_30
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_42

    .line 342
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->notificationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 344
    :cond_42
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_54

    .line 345
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 347
    :cond_54
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_66

    .line 348
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->dismissReason_:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 350
    :cond_66
    return-void
.end method
