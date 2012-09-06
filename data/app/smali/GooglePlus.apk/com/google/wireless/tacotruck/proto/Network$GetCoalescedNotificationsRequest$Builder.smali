.class public final Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field private coalesceCircleNotifications_:Z

.field private continuationToken_:Ljava/lang/Object;

.field private earliestNotificationTime_:D

.field private filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field private includedNotificationType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;",
            ">;"
        }
    .end annotation
.end field

.field private maxCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32063
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32332
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MENTIONS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 32377
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 32401
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32064
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 32065
    return-void
.end method

.method static synthetic access$43800()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 1

    .prologue
    .line 32058
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 1

    .prologue
    .line 32070
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureIncludedNotificationTypeIsMutable()V
    .registers 3

    .prologue
    .line 32404
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 32405
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32406
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32408
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 32068
    return-void
.end method


# virtual methods
.method public addAllIncludedNotificationType(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 32439
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 32440
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 32442
    return-object p0
.end method

.method public addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32429
    if-nez p1, :cond_8

    .line 32430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32432
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 32433
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32435
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
    .registers 3

    .prologue
    .line 32101
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v0

    .line 32102
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32103
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 32105
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
    .registers 6

    .prologue
    .line 32119
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 32120
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32121
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32122
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 32123
    or-int/lit8 v2, v2, 0x1

    .line 32125
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->maxCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->maxCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44002(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;I)I

    .line 32126
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 32127
    or-int/lit8 v2, v2, 0x2

    .line 32129
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->continuationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->continuationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44102(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32130
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 32131
    or-int/lit8 v2, v2, 0x4

    .line 32133
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44202(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 32134
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 32135
    or-int/lit8 v2, v2, 0x8

    .line 32137
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->coalesceCircleNotifications_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->coalesceCircleNotifications_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44302(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Z)Z

    .line 32138
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 32139
    or-int/lit8 v2, v2, 0x10

    .line 32141
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44402(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 32142
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 32143
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32144
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32146
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44502(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Ljava/util/List;)Ljava/util/List;

    .line 32147
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 32148
    or-int/lit8 v2, v2, 0x20

    .line 32150
    :cond_6a
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->earliestNotificationTime_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->earliestNotificationTime_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44602(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;D)D

    .line 32151
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44702(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;I)I

    .line 32152
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32074
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32075
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->maxCount_:I

    .line 32076
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32077
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32078
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32079
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MENTIONS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 32080
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32081
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->coalesceCircleNotifications_:Z

    .line 32082
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32083
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 32084
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32085
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32086
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32087
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->earliestNotificationTime_:D

    .line 32088
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32089
    return-object p0
.end method

.method public clearChannel()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 2

    .prologue
    .line 32394
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32395
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 32397
    return-object p0
.end method

.method public clearCoalesceCircleNotifications()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 2

    .prologue
    .line 32370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->coalesceCircleNotifications_:Z

    .line 32373
    return-object p0
.end method

.method public clearContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 2

    .prologue
    .line 32320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32321
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32323
    return-object p0
.end method

.method public clearEarliestNotificationTime()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3

    .prologue
    .line 32466
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32467
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->earliestNotificationTime_:D

    .line 32469
    return-object p0
.end method

.method public clearFilter()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 2

    .prologue
    .line 32349
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32350
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MENTIONS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 32352
    return-object p0
.end method

.method public clearIncludedNotificationType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 2

    .prologue
    .line 32445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32446
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32448
    return-object p0
.end method

.method public clearMaxCount()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 2

    .prologue
    .line 32289
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32290
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->maxCount_:I

    .line 32292
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 32058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3

    .prologue
    .line 32093
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

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
    .line 32058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2

    .prologue
    .line 32382
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object v0
.end method

.method public getCoalesceCircleNotifications()Z
    .registers 2

    .prologue
    .line 32361
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->coalesceCircleNotifications_:Z

    return v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32301
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32302
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 32303
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32304
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32307
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
    .line 32058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
    .registers 2

    .prologue
    .line 32097
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEarliestNotificationTime()D
    .registers 3

    .prologue
    .line 32457
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->earliestNotificationTime_:D

    return-wide v0
.end method

.method public getFilter()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    .registers 2

    .prologue
    .line 32337
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    return-object v0
.end method

.method public getIncludedNotificationType(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 3
    .parameter "index"

    .prologue
    .line 32416
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    return-object v0
.end method

.method public getIncludedNotificationTypeCount()I
    .registers 2

    .prologue
    .line 32413
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIncludedNotificationTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32410
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 32280
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->maxCount_:I

    return v0
.end method

.method public hasChannel()Z
    .registers 3

    .prologue
    .line 32379
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

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

.method public hasCoalesceCircleNotifications()Z
    .registers 3

    .prologue
    .line 32358
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

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

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    .line 32298
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

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

.method public hasEarliestNotificationTime()Z
    .registers 3

    .prologue
    .line 32454
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

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

.method public hasFilter()Z
    .registers 3

    .prologue
    .line 32334
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

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

.method public hasMaxCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32277
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

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
    .line 32189
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
    .line 32058
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 32058
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

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
    .line 32058
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 32198
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_98

    .line 32203
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 32205
    :sswitch_d
    return-object p0

    .line 32210
    :sswitch_e
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32211
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->maxCount_:I

    goto :goto_0

    .line 32215
    :sswitch_1b
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32216
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->continuationToken_:Ljava/lang/Object;

    goto :goto_0

    .line 32220
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 32221
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    move-result-object v4

    .line 32222
    .local v4, value:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    if-eqz v4, :cond_0

    .line 32223
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32224
    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    goto :goto_0

    .line 32229
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    :sswitch_3b
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32230
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->coalesceCircleNotifications_:Z

    goto :goto_0

    .line 32234
    :sswitch_48
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 32235
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    move-result-object v4

    .line 32236
    .local v4, value:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    if-eqz v4, :cond_0

    .line 32237
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32238
    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    goto :goto_0

    .line 32243
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    :sswitch_5b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 32244
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v4

    .line 32245
    .local v4, value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    if-eqz v4, :cond_0

    .line 32246
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    goto :goto_0

    .line 32251
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    :sswitch_69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 32252
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 32253
    .local v1, oldLimit:I
    :cond_71
    :goto_71
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_85

    .line 32254
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 32255
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v4

    .line 32256
    .restart local v4       #value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    if-eqz v4, :cond_71

    .line 32257
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    goto :goto_71

    .line 32260
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    :cond_85
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 32264
    .end local v0           #length:I
    .end local v1           #oldLimit:I
    :sswitch_8a
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32265
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->earliestNotificationTime_:D

    goto/16 :goto_0

    .line 32198
    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_3b
        0x28 -> :sswitch_48
        0x30 -> :sswitch_5b
        0x32 -> :sswitch_69
        0x39 -> :sswitch_8a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 32156
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32185
    :cond_6
    :goto_6
    return-object p0

    .line 32157
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->hasMaxCount()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32158
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getMaxCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 32160
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->hasContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 32161
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 32163
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 32164
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getFilter()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setFilter(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 32166
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->hasCoalesceCircleNotifications()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 32167
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getCoalesceCircleNotifications()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setCoalesceCircleNotifications(Z)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 32169
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->hasChannel()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 32170
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getChannel()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setChannel(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 32172
    :cond_48
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44500(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 32173
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 32174
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44500(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32175
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32182
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->hasEarliestNotificationTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32183
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getEarliestNotificationTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setEarliestNotificationTime(D)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    goto :goto_6

    .line 32177
    :cond_74
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 32178
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->access$44500(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_66
.end method

.method public setChannel(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32385
    if-nez p1, :cond_8

    .line 32386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32388
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32389
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 32391
    return-object p0
.end method

.method public setCoalesceCircleNotifications(Z)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32364
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32365
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->coalesceCircleNotifications_:Z

    .line 32367
    return-object p0
.end method

.method public setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32311
    if-nez p1, :cond_8

    .line 32312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32314
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32315
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->continuationToken_:Ljava/lang/Object;

    .line 32317
    return-object p0
.end method

.method public setEarliestNotificationTime(D)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 32460
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32461
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->earliestNotificationTime_:D

    .line 32463
    return-object p0
.end method

.method public setFilter(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32340
    if-nez p1, :cond_8

    .line 32341
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32343
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32344
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 32346
    return-object p0
.end method

.method public setIncludedNotificationType(ILcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 32420
    if-nez p2, :cond_8

    .line 32421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32423
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 32424
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32426
    return-object p0
.end method

.method public setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32283
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->bitField0_:I

    .line 32284
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->maxCount_:I

    .line 32286
    return-object p0
.end method
