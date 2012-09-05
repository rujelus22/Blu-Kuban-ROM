.class public final Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private continuationToken_:Ljava/lang/Object;

.field private lastReadTime_:D

.field private latestNotificationTime_:D

.field private latestPushNotificationTime_:D

.field private notification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
            ">;"
        }
    .end annotation
.end field

.field private totalPush_:I

.field private totalUnread_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32198
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32387
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    .line 32518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32199
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 32200
    return-void
.end method

.method static synthetic access$44100(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32193
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$44200()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 1

    .prologue
    .line 32193
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32245
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    .line 32246
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 32247
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 32250
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 1

    .prologue
    .line 32205
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureNotificationIsMutable()V
    .registers 3

    .prologue
    .line 32390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 32391
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    .line 32392
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32394
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 32203
    return-void
.end method


# virtual methods
.method public addAllNotification(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 32457
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->ensureNotificationIsMutable()V

    .line 32458
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 32460
    return-object p0
.end method

.method public addNotification(ILcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 32450
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->ensureNotificationIsMutable()V

    .line 32451
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 32453
    return-object p0
.end method

.method public addNotification(ILcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 32433
    if-nez p2, :cond_8

    .line 32434
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32436
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->ensureNotificationIsMutable()V

    .line 32437
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 32439
    return-object p0
.end method

.method public addNotification(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 32443
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->ensureNotificationIsMutable()V

    .line 32444
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32446
    return-object p0
.end method

.method public addNotification(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32423
    if-nez p1, :cond_8

    .line 32424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32426
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->ensureNotificationIsMutable()V

    .line 32427
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32429
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32193
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    .registers 6

    .prologue
    .line 32254
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 32255
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32256
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32257
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 32258
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    .line 32259
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32261
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$44402(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;Ljava/util/List;)Ljava/util/List;

    .line 32262
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 32263
    or-int/lit8 v2, v2, 0x1

    .line 32265
    :cond_2a
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalUnread_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$44502(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;I)I

    .line 32266
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 32267
    or-int/lit8 v2, v2, 0x2

    .line 32269
    :cond_36
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestNotificationTime_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$44602(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;D)D

    .line 32270
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 32271
    or-int/lit8 v2, v2, 0x4

    .line 32273
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->continuationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$44702(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32274
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 32275
    or-int/lit8 v2, v2, 0x8

    .line 32277
    :cond_50
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestPushNotificationTime_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$44802(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;D)D

    .line 32278
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 32279
    or-int/lit8 v2, v2, 0x10

    .line 32281
    :cond_5d
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalPush_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$44902(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;I)I

    .line 32282
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 32283
    or-int/lit8 v2, v2, 0x20

    .line 32285
    :cond_6a
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->lastReadTime_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$45002(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;D)D

    .line 32286
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$45102(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;I)I

    .line 32287
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32193
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32193
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 32209
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    .line 32211
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32212
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalUnread_:I

    .line 32213
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32214
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestNotificationTime_:D

    .line 32215
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32216
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32217
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32218
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestPushNotificationTime_:D

    .line 32219
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32220
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalPush_:I

    .line 32221
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32222
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->lastReadTime_:D

    .line 32223
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32224
    return-object p0
.end method

.method public clearContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 2

    .prologue
    .line 32542
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32543
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32545
    return-object p0
.end method

.method public clearLastReadTime()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 3

    .prologue
    .line 32610
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->lastReadTime_:D

    .line 32613
    return-object p0
.end method

.method public clearLatestNotificationTime()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 3

    .prologue
    .line 32511
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32512
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestNotificationTime_:D

    .line 32514
    return-object p0
.end method

.method public clearLatestPushNotificationTime()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 3

    .prologue
    .line 32568
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32569
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestPushNotificationTime_:D

    .line 32571
    return-object p0
.end method

.method public clearNotification()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 2

    .prologue
    .line 32463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    .line 32464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32466
    return-object p0
.end method

.method public clearTotalPush()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 2

    .prologue
    .line 32589
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32590
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalPush_:I

    .line 32592
    return-object p0
.end method

.method public clearTotalUnread()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 2

    .prologue
    .line 32490
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32491
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalUnread_:I

    .line 32493
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 32193
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32193
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 3

    .prologue
    .line 32228
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

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
    .line 32193
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32523
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32524
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 32525
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32526
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32529
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
    .line 32193
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32193
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    .registers 2

    .prologue
    .line 32232
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLastReadTime()D
    .registers 3

    .prologue
    .line 32601
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->lastReadTime_:D

    return-wide v0
.end method

.method public getLatestNotificationTime()D
    .registers 3

    .prologue
    .line 32502
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestNotificationTime_:D

    return-wide v0
.end method

.method public getLatestPushNotificationTime()D
    .registers 3

    .prologue
    .line 32559
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestPushNotificationTime_:D

    return-wide v0
.end method

.method public getNotification(I)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 3
    .parameter "index"

    .prologue
    .line 32403
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    return-object v0
.end method

.method public getNotificationCount()I
    .registers 2

    .prologue
    .line 32400
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotificationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32397
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPush()I
    .registers 2

    .prologue
    .line 32580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalPush_:I

    return v0
.end method

.method public getTotalUnread()I
    .registers 2

    .prologue
    .line 32481
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalUnread_:I

    return v0
.end method

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    .line 32520
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

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

.method public hasLastReadTime()Z
    .registers 3

    .prologue
    .line 32598
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

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

.method public hasLatestNotificationTime()Z
    .registers 3

    .prologue
    .line 32499
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

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

.method public hasLatestPushNotificationTime()Z
    .registers 3

    .prologue
    .line 32556
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

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

.method public hasTotalPush()Z
    .registers 3

    .prologue
    .line 32577
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

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

.method public hasTotalUnread()Z
    .registers 3

    .prologue
    .line 32478
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

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
    .line 32193
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

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
    .line 32193
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32332
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 32333
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_6c

    .line 32338
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32340
    :sswitch_d
    return-object p0

    .line 32345
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    .line 32346
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 32347
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->addNotification(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    goto :goto_0

    .line 32351
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32352
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalUnread_:I

    goto :goto_0

    .line 32356
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32357
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestNotificationTime_:D

    goto :goto_0

    .line 32361
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32362
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->continuationToken_:Ljava/lang/Object;

    goto :goto_0

    .line 32366
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32367
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestPushNotificationTime_:D

    goto :goto_0

    .line 32371
    :sswitch_51
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32372
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalPush_:I

    goto :goto_0

    .line 32376
    :sswitch_5e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32377
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->lastReadTime_:D

    goto :goto_0

    .line 32333
    nop

    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1d
        0x19 -> :sswitch_2a
        0x22 -> :sswitch_37
        0x29 -> :sswitch_44
        0x30 -> :sswitch_51
        0x39 -> :sswitch_5e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 32291
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32320
    :cond_6
    :goto_6
    return-object p0

    .line 32292
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$44400(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 32293
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 32294
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$44400(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    .line 32295
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32302
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->hasTotalUnread()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 32303
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getTotalUnread()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->setTotalUnread(I)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    .line 32305
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->hasLatestNotificationTime()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 32306
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getLatestNotificationTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->setLatestNotificationTime(D)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    .line 32308
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->hasContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 32309
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    .line 32311
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->hasLatestPushNotificationTime()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 32312
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getLatestPushNotificationTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->setLatestPushNotificationTime(D)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    .line 32314
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->hasTotalPush()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 32315
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getTotalPush()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->setTotalPush(I)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    .line 32317
    :cond_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->hasLastReadTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32318
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getLastReadTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->setLastReadTime(D)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    goto :goto_6

    .line 32297
    :cond_74
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->ensureNotificationIsMutable()V

    .line 32298
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->access$44400(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32533
    if-nez p1, :cond_8

    .line 32534
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32536
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32537
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32539
    return-object p0
.end method

.method public setLastReadTime(D)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 32604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32605
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->lastReadTime_:D

    .line 32607
    return-object p0
.end method

.method public setLatestNotificationTime(D)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 32505
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32506
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestNotificationTime_:D

    .line 32508
    return-object p0
.end method

.method public setLatestPushNotificationTime(D)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 32562
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32563
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->latestPushNotificationTime_:D

    .line 32565
    return-object p0
.end method

.method public setNotification(ILcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 32417
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->ensureNotificationIsMutable()V

    .line 32418
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32420
    return-object p0
.end method

.method public setNotification(ILcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 32407
    if-nez p2, :cond_8

    .line 32408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32410
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->ensureNotificationIsMutable()V

    .line 32411
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->notification_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32413
    return-object p0
.end method

.method public setTotalPush(I)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32583
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32584
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalPush_:I

    .line 32586
    return-object p0
.end method

.method public setTotalUnread(I)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32484
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->bitField0_:I

    .line 32485
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->totalUnread_:I

    .line 32487
    return-object p0
.end method
