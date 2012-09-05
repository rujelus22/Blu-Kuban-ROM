.class public final Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCoalescedNotificationsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31868
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    .line 31869
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->initFields()V

    .line 31870
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31114
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 31291
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->memoizedIsInitialized:B

    .line 31326
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->memoizedSerializedSize:I

    .line 31115
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31109
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31116
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31291
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->memoizedIsInitialized:B

    .line 31326
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->memoizedSerializedSize:I

    .line 31116
    return-void
.end method

.method static synthetic access$43302(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31109
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->maxCount_:I

    return p1
.end method

.method static synthetic access$43402(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31109
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->continuationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$43502(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31109
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    return-object p1
.end method

.method static synthetic access$43602(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31109
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->coalesceCircleNotifications_:Z

    return p1
.end method

.method static synthetic access$43702(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31109
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object p1
.end method

.method static synthetic access$43800(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31109
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$43802(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31109
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$43902(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31109
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->earliestNotificationTime_:D

    return-wide p1
.end method

.method static synthetic access$44002(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31109
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    return p1
.end method

.method private getContinuationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 31218
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->continuationToken_:Ljava/lang/Object;

    .line 31219
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 31220
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31222
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->continuationToken_:Ljava/lang/Object;

    .line 31225
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
    .registers 1

    .prologue
    .line 31120
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 31283
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->maxCount_:I

    .line 31284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->continuationToken_:Ljava/lang/Object;

    .line 31285
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MENTIONS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31286
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->coalesceCircleNotifications_:Z

    .line 31287
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 31288
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    .line 31289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->earliestNotificationTime_:D

    .line 31290
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    .registers 1

    .prologue
    .line 31443
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->access$43100()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChannel()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2

    .prologue
    .line 31256
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object v0
.end method

.method public getCoalesceCircleNotifications()Z
    .registers 2

    .prologue
    .line 31246
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->coalesceCircleNotifications_:Z

    return v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31204
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->continuationToken_:Ljava/lang/Object;

    .line 31205
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 31206
    check-cast v1, Ljava/lang/String;

    .line 31214
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 31208
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31210
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31211
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 31212
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->continuationToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 31214
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
    .registers 2

    .prologue
    .line 31124
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    return-object v0
.end method

.method public getEarliestNotificationTime()D
    .registers 3

    .prologue
    .line 31279
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->earliestNotificationTime_:D

    return-wide v0
.end method

.method public getFilter()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    .registers 2

    .prologue
    .line 31236
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    return-object v0
.end method

.method public getIncludedNotificationType(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 3
    .parameter "index"

    .prologue
    .line 31269
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    return-object v0
.end method

.method public getIncludedNotificationTypeCount()I
    .registers 2

    .prologue
    .line 31266
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

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
    .line 31263
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 31194
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->maxCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 31328
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->memoizedSerializedSize:I

    .line 31329
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 31366
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 31331
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 31332
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_18

    .line 31333
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->maxCount_:I

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 31336
    :cond_18
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_27

    .line 31337
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 31340
    :cond_27
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_39

    .line 31341
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 31344
    :cond_39
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_48

    .line 31345
    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->coalesceCircleNotifications_:Z

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 31348
    :cond_48
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5c

    .line 31349
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 31353
    :cond_5c
    const/4 v0, 0x0

    .line 31354
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5e
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7a

    .line 31355
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 31354
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 31358
    :cond_7a
    add-int/2addr v2, v0

    .line 31359
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 31361
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_94

    .line 31362
    const/4 v4, 0x7

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->earliestNotificationTime_:D

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 31365
    :cond_94
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 31366
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_9
.end method

.method public hasChannel()Z
    .registers 3

    .prologue
    .line 31253
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

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
    .line 31243
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

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
    .line 31201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

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
    .line 31276
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

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

.method public hasFilter()Z
    .registers 3

    .prologue
    .line 31233
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

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

    .line 31191
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

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

    .line 31293
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->memoizedIsInitialized:B

    .line 31294
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 31297
    :goto_8
    return v1

    .line 31294
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 31296
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->memoizedIsInitialized:B

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
    .line 31373
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 31302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getSerializedSize()I

    .line 31303
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 31304
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->maxCount_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 31306
    :cond_11
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1e

    .line 31307
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 31309
    :cond_1e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 31310
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->filter_:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31312
    :cond_2e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3b

    .line 31313
    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->coalesceCircleNotifications_:Z

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31315
    :cond_3b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4d

    .line 31316
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31318
    :cond_4d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4e
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 31319
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31318
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 31321
    :cond_69
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_77

    .line 31322
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->earliestNotificationTime_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 31324
    :cond_77
    return-void
.end method
