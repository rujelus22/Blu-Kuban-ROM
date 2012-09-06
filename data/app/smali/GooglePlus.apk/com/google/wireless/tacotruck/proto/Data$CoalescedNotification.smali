.class public final Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoalescedNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

.field private static final serialVersionUID:J


# instance fields
.field private activitySnippet_:Ljava/lang/Object;

.field private bitField0_:I

.field private circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

.field private displayMessageHtml_:Ljava/lang/Object;

.field private displayMessage_:Ljava/lang/Object;

.field private eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

.field private photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

.field private pushEnabled_:Z

.field private read_:Z

.field private streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

.field private timestamp_:D

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26487
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    .line 26488
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->initFields()V

    .line 26489
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 25229
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 25568
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedIsInitialized:B

    .line 25621
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedSerializedSize:I

    .line 25230
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25231
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 25568
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedIsInitialized:B

    .line 25621
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedSerializedSize:I

    .line 25231
    return-void
.end method

.method static synthetic access$34302(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34402(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    return-object p1
.end method

.method static synthetic access$34502(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z

    return p1
.end method

.method static synthetic access$34602(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    return-wide p1
.end method

.method static synthetic access$34702(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    return-object p1
.end method

.method static synthetic access$34802(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object p1
.end method

.method static synthetic access$34902(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35002(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35102(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object p1
.end method

.method static synthetic access$35202(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    return p1
.end method

.method static synthetic access$35302(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessageHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35402(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    return-object p1
.end method

.method static synthetic access$35502(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    return-object p1
.end method

.method static synthetic access$35602(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25224
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    return p1
.end method

.method private getActivitySnippetBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25470
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    .line 25471
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25472
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25474
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    .line 25477
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 1

    .prologue
    .line 25235
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    return-object v0
.end method

.method private getDisplayMessageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25356
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    .line 25357
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25358
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25360
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    .line 25363
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

.method private getDisplayMessageHtmlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25522
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessageHtml_:Ljava/lang/Object;

    .line 25523
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25524
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25526
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessageHtml_:Ljava/lang/Object;

    .line 25529
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

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25438
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    .line 25439
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25440
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25442
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    .line 25445
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

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 25554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    .line 25555
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 25556
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z

    .line 25557
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    .line 25558
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 25559
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 25560
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    .line 25561
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    .line 25562
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 25563
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    .line 25564
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessageHtml_:Ljava/lang/Object;

    .line 25565
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .line 25566
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->UNKNOWN_NOTIFICATION_TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    .line 25567
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 1

    .prologue
    .line 25757
    #calls: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->access$34100()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 25760
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivitySnippet()Ljava/lang/String;
    .registers 5

    .prologue
    .line 25456
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    .line 25457
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 25458
    check-cast v1, Ljava/lang/String;

    .line 25466
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 25460
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25462
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25463
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25464
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 25466
    goto :goto_8
.end method

.method public getCircleData()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 2

    .prologue
    .line 25488
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 2

    .prologue
    .line 25239
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    return-object v0
.end method

.method public getDisplayMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 25342
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    .line 25343
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 25344
    check-cast v1, Ljava/lang/String;

    .line 25352
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 25346
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25348
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25349
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25350
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 25352
    goto :goto_8
.end method

.method public getDisplayMessageHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 25508
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessageHtml_:Ljava/lang/Object;

    .line 25509
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 25510
    check-cast v1, Ljava/lang/String;

    .line 25518
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 25512
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25514
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25515
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25516
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessageHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 25518
    goto :goto_8
.end method

.method public getEventsData()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    .registers 2

    .prologue
    .line 25540
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 25424
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    .line 25425
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 25426
    check-cast v1, Ljava/lang/String;

    .line 25434
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 25428
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25430
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25431
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25432
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 25434
    goto :goto_8
.end method

.method public getNotificationType()Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 2

    .prologue
    .line 25550
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    return-object v0
.end method

.method public getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2

    .prologue
    .line 25414
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object v0
.end method

.method public getPushEnabled()Z
    .registers 2

    .prologue
    .line 25498
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    return v0
.end method

.method public getRead()Z
    .registers 2

    .prologue
    .line 25384
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 25623
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedSerializedSize:I

    .line 25624
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 25680
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 25626
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 25627
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 25628
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25631
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2d

    .line 25632
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 25635
    :cond_2d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 25636
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 25639
    :cond_3b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_48

    .line 25640
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 25643
    :cond_48
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 25644
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25647
    :cond_58
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_68

    .line 25648
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25651
    :cond_68
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7a

    .line 25652
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25655
    :cond_7a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8b

    .line 25656
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25659
    :cond_8b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9c

    .line 25660
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25663
    :cond_9c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_ad

    .line 25664
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 25667
    :cond_ad
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_c0

    .line 25668
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessageHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25671
    :cond_c0
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_d1

    .line 25672
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25675
    :cond_d1
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_e6

    .line 25676
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v3}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 25679
    :cond_e6
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedSerializedSize:I

    move v1, v0

    .line 25680
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 2

    .prologue
    .line 25404
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    return-object v0
.end method

.method public getTimestamp()D
    .registers 3

    .prologue
    .line 25394
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .registers 2

    .prologue
    .line 25374
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    return-object v0
.end method

.method public hasActivitySnippet()Z
    .registers 3

    .prologue
    .line 25453
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

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

.method public hasCircleData()Z
    .registers 3

    .prologue
    .line 25485
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDisplayMessage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25339
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDisplayMessageHtml()Z
    .registers 3

    .prologue
    .line 25505
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEventsData()Z
    .registers 3

    .prologue
    .line 25537
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 25421
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

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

.method public hasNotificationType()Z
    .registers 3

    .prologue
    .line 25547
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPhotoData()Z
    .registers 3

    .prologue
    .line 25411
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

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

.method public hasPushEnabled()Z
    .registers 3

    .prologue
    .line 25495
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRead()Z
    .registers 3

    .prologue
    .line 25381
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

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

.method public hasStreamData()Z
    .registers 3

    .prologue
    .line 25401
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 25391
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 25371
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 25570
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedIsInitialized:B

    .line 25571
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 25574
    :goto_8
    return v1

    .line 25571
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 25573
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 25758
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25224
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 25762
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

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
    .line 25687
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 25579
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getSerializedSize()I

    .line 25580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 25581
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25583
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_24

    .line 25584
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 25586
    :cond_24
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 25587
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25589
    :cond_30
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 25590
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 25592
    :cond_3b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 25593
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25595
    :cond_49
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 25596
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25598
    :cond_57
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_67

    .line 25599
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25601
    :cond_67
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_76

    .line 25602
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25604
    :cond_76
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_85

    .line 25605
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25607
    :cond_85
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_94

    .line 25608
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25610
    :cond_94
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a5

    .line 25611
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessageHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25613
    :cond_a5
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b4

    .line 25614
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25616
    :cond_b4
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c7

    .line 25617
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 25619
    :cond_c7
    return-void
.end method
