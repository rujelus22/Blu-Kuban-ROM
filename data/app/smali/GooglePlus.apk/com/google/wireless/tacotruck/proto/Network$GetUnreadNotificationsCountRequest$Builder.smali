.class public final Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private coalesceCircleNotifications_:Z

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


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33422
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33577
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 33423
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->maybeForceBuilderInitialization()V

    .line 33424
    return-void
.end method

.method static synthetic access$46000()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 1

    .prologue
    .line 33417
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 1

    .prologue
    .line 33429
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureIncludedNotificationTypeIsMutable()V
    .registers 3

    .prologue
    .line 33580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 33581
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 33582
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33584
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 33427
    return-void
.end method


# virtual methods
.method public addAllIncludedNotificationType(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 33615
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 33616
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 33618
    return-object p0
.end method

.method public addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33605
    if-nez p1, :cond_8

    .line 33606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33608
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 33609
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33611
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    .registers 3

    .prologue
    .line 33450
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    .line 33451
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 33452
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 33454
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    .registers 6

    .prologue
    .line 33468
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 33469
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33470
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33471
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 33472
    or-int/lit8 v2, v2, 0x1

    .line 33474
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$46202(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;Z)Z

    .line 33475
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 33476
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 33477
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33479
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$46302(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;Ljava/util/List;)Ljava/util/List;

    .line 33480
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$46402(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;I)I

    .line 33481
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 2

    .prologue
    .line 33433
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 33434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    .line 33435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 33437
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33438
    return-object p0
.end method

.method public clearCoalesceCircleNotifications()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 2

    .prologue
    .line 33570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    .line 33573
    return-object p0
.end method

.method public clearIncludedNotificationType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 2

    .prologue
    .line 33621
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 33622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33624
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 33417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 3

    .prologue
    .line 33442
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

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
    .line 33417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCoalesceCircleNotifications()Z
    .registers 2

    .prologue
    .line 33561
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 33417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    .registers 2

    .prologue
    .line 33446
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getIncludedNotificationType(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 3
    .parameter "index"

    .prologue
    .line 33592
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    return-object v0
.end method

.method public getIncludedNotificationTypeCount()I
    .registers 2

    .prologue
    .line 33589
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

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
    .line 33586
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCoalesceCircleNotifications()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33558
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

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
    .line 33503
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
    .line 33417
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33417
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

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
    .line 33417
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 33512
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_4a

    .line 33517
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 33519
    :sswitch_d
    return-object p0

    .line 33524
    :sswitch_e
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33525
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    goto :goto_0

    .line 33529
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 33530
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v4

    .line 33531
    .local v4, value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    if-eqz v4, :cond_0

    .line 33532
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    goto :goto_0

    .line 33537
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 33538
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 33539
    .local v1, oldLimit:I
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_45

    .line 33540
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 33541
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v4

    .line 33542
    .restart local v4       #value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    if-eqz v4, :cond_31

    .line 33543
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    goto :goto_31

    .line 33546
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    :cond_45
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 33512
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x12 -> :sswitch_29
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 33485
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33499
    :cond_6
    :goto_6
    return-object p0

    .line 33486
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->hasCoalesceCircleNotifications()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33487
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getCoalesceCircleNotifications()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->setCoalesceCircleNotifications(Z)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    .line 33489
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$46300(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 33490
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 33491
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$46300(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 33492
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 33494
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 33495
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$46300(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setCoalesceCircleNotifications(Z)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33565
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    .line 33567
    return-object p0
.end method

.method public setIncludedNotificationType(ILcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 33596
    if-nez p2, :cond_8

    .line 33597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33599
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 33600
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33602
    return-object p0
.end method
