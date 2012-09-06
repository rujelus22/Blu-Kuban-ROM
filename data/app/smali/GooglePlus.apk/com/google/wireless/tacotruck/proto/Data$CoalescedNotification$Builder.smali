.class public final Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
        "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotificationOrBuilder;"
    }
.end annotation


# instance fields
.field private activitySnippet_:Ljava/lang/Object;

.field private bitField0_:I

.field private circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

.field private displayMessageHtml_:Ljava/lang/Object;

.field private displayMessage_:Ljava/lang/Object;

.field private eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

.field private id_:Ljava/lang/Object;

.field private notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

.field private photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

.field private pushEnabled_:Z

.field private read_:Z

.field private streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

.field private timestamp_:D

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25769
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26057
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 26093
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 26159
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 26202
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 26245
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 26281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 26317
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 26381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessageHtml_:Ljava/lang/Object;

    .line 26417
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .line 26460
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->UNKNOWN_NOTIFICATION_TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    .line 25770
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->maybeForceBuilderInitialization()V

    .line 25771
    return-void
.end method

.method static synthetic access$34100()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 1

    .prologue
    .line 25764
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 1

    .prologue
    .line 25776
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25774
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 3

    .prologue
    .line 25819
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    .line 25820
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25821
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25823
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 6

    .prologue
    .line 25837
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 25838
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25839
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 25840
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 25841
    or-int/lit8 v2, v2, 0x1

    .line 25843
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$34302(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25844
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 25845
    or-int/lit8 v2, v2, 0x2

    .line 25847
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$34402(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 25848
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 25849
    or-int/lit8 v2, v2, 0x4

    .line 25851
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$34502(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Z)Z

    .line 25852
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 25853
    or-int/lit8 v2, v2, 0x8

    .line 25855
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$34602(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;D)D

    .line 25856
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 25857
    or-int/lit8 v2, v2, 0x10

    .line 25859
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$34702(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 25860
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 25861
    or-int/lit8 v2, v2, 0x20

    .line 25863
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$34802(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 25864
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 25865
    or-int/lit8 v2, v2, 0x40

    .line 25867
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$34902(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25868
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 25869
    or-int/lit16 v2, v2, 0x80

    .line 25871
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$35002(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25872
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 25873
    or-int/lit16 v2, v2, 0x100

    .line 25875
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$35102(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 25876
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 25877
    or-int/lit16 v2, v2, 0x200

    .line 25879
    :cond_83
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$35202(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Z)Z

    .line 25880
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 25881
    or-int/lit16 v2, v2, 0x400

    .line 25883
    :cond_90
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessageHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessageHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$35302(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25884
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_9d

    .line 25885
    or-int/lit16 v2, v2, 0x800

    .line 25887
    :cond_9d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$35402(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .line 25888
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_aa

    .line 25889
    or-int/lit16 v2, v2, 0x1000

    .line 25891
    :cond_aa
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$35502(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    .line 25892
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$35602(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;I)I

    .line 25893
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 25780
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 25782
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25783
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 25784
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25785
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    .line 25786
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25787
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    .line 25788
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25789
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 25790
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25791
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 25792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 25794
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 25796
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25797
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 25798
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25799
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    .line 25800
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25801
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessageHtml_:Ljava/lang/Object;

    .line 25802
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25803
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .line 25804
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25805
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->UNKNOWN_NOTIFICATION_TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    .line 25806
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25807
    return-object p0
.end method

.method public clearActivitySnippet()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26305
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26306
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 26308
    return-object p0
.end method

.method public clearCircleData()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26353
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 26355
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26356
    return-object p0
.end method

.method public clearDisplayMessage()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26081
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26082
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 26084
    return-object p0
.end method

.method public clearDisplayMessageHtml()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26405
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26406
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessageHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessageHtml_:Ljava/lang/Object;

    .line 26408
    return-object p0
.end method

.method public clearEventsData()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26453
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .line 26455
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26456
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26269
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26270
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 26272
    return-object p0
.end method

.method public clearNotificationType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26478
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->UNKNOWN_NOTIFICATION_TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    .line 26480
    return-object p0
.end method

.method public clearPhotoData()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26238
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 26240
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26241
    return-object p0
.end method

.method public clearPushEnabled()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    .line 26377
    return-object p0
.end method

.method public clearRead()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26131
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    .line 26134
    return-object p0
.end method

.method public clearStreamData()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26195
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 26197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26198
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3

    .prologue
    .line 26152
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    .line 26155
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 26110
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26111
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 26113
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3

    .prologue
    .line 25811
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

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
    .line 25764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivitySnippet()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26286
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 26287
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 26288
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26289
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 26292
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

.method public getCircleData()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 2

    .prologue
    .line 26322
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 2

    .prologue
    .line 25815
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26062
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 26063
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 26064
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26065
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 26068
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

.method public getDisplayMessageHtml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26386
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessageHtml_:Ljava/lang/Object;

    .line 26387
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 26388
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26389
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessageHtml_:Ljava/lang/Object;

    .line 26392
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

.method public getEventsData()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    .registers 2

    .prologue
    .line 26422
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26250
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 26251
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 26252
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26253
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 26256
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

.method public getNotificationType()Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 2

    .prologue
    .line 26465
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    return-object v0
.end method

.method public getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2

    .prologue
    .line 26207
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object v0
.end method

.method public getPushEnabled()Z
    .registers 2

    .prologue
    .line 26365
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    return v0
.end method

.method public getRead()Z
    .registers 2

    .prologue
    .line 26122
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    return v0
.end method

.method public getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 2

    .prologue
    .line 26164
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    return-object v0
.end method

.method public getTimestamp()D
    .registers 3

    .prologue
    .line 26143
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .registers 2

    .prologue
    .line 26098
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    return-object v0
.end method

.method public hasActivitySnippet()Z
    .registers 3

    .prologue
    .line 26283
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26319
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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

    .line 26059
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26383
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26419
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26247
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26462
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26204
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26362
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26119
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26161
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26140
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .line 26095
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 25941
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26341
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26343
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 26349
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26350
    return-object p0

    .line 26346
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    goto :goto_20
.end method

.method public mergeEventsData(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26441
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26443
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .line 26449
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26450
    return-object p0

    .line 26446
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    goto :goto_20
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
    .line 25764
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 25764
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

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
    .line 25764
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25949
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 25950
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_106

    .line 25955
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 25957
    :sswitch_d
    return-object p0

    .line 25962
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25963
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    goto :goto_0

    .line 25967
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 25968
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v3

    .line 25969
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    if-eqz v3, :cond_0

    .line 25970
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25971
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_0

    .line 25976
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25977
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    goto :goto_0

    .line 25981
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 25982
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    goto :goto_0

    .line 25986
    :sswitch_48
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v1

    .line 25987
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->hasStreamData()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 25988
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    .line 25990
    :cond_59
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 25991
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    goto :goto_0

    .line 25995
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    :sswitch_64
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v1

    .line 25996
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->hasPhotoData()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 25997
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    .line 25999
    :cond_75
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26000
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    goto :goto_0

    .line 26004
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    :sswitch_80
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26005
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 26009
    :sswitch_8e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26010
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 26014
    :sswitch_9c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v1

    .line 26015
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->hasCircleData()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 26016
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getCircleData()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    .line 26018
    :cond_ad
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26019
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    goto/16 :goto_0

    .line 26023
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    :sswitch_b9
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26024
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    goto/16 :goto_0

    .line 26028
    :sswitch_c7
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26029
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessageHtml_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 26033
    :sswitch_d5
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v1

    .line 26034
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->hasEventsData()Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 26035
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getEventsData()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    .line 26037
    :cond_e6
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26038
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setEventsData(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    goto/16 :goto_0

    .line 26042
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    :sswitch_f2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 26043
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v3

    .line 26044
    .local v3, value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    if-eqz v3, :cond_0

    .line 26045
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26046
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    goto/16 :goto_0

    .line 25950
    :sswitch_data_106
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_2e
        0x21 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x32 -> :sswitch_64
        0x3a -> :sswitch_80
        0x42 -> :sswitch_8e
        0x4a -> :sswitch_9c
        0x50 -> :sswitch_b9
        0x5a -> :sswitch_c7
        0x62 -> :sswitch_d5
        0x68 -> :sswitch_f2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 25897
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 25937
    :cond_6
    :goto_6
    return-object p0

    .line 25898
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasDisplayMessage()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 25899
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setDisplayMessage(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25901
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 25902
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25904
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasRead()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 25905
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setRead(Z)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25907
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 25908
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setTimestamp(D)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25910
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasStreamData()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 25911
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25913
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPhotoData()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 25914
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergePhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25916
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 25917
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25919
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasActivitySnippet()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 25920
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setActivitySnippet(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25922
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasCircleData()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 25923
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getCircleData()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25925
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 25926
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPushEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setPushEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25928
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasDisplayMessageHtml()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 25929
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessageHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setDisplayMessageHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25931
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasEventsData()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 25932
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getEventsData()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeEventsData(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 25934
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasNotificationType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25935
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getNotificationType()Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26226
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26228
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 26234
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26235
    return-object p0

    .line 26231
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    goto :goto_20
.end method

.method public mergeStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26183
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26185
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 26191
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26192
    return-object p0

    .line 26188
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    goto :goto_20
.end method

.method public setActivitySnippet(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26296
    if-nez p1, :cond_8

    .line 26297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26299
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26300
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 26302
    return-object p0
.end method

.method public setCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26335
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 26337
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26338
    return-object p0
.end method

.method public setCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26325
    if-nez p1, :cond_8

    .line 26326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26328
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 26330
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26331
    return-object p0
.end method

.method public setDisplayMessage(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26072
    if-nez p1, :cond_8

    .line 26073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26075
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26076
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 26078
    return-object p0
.end method

.method public setDisplayMessageHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26396
    if-nez p1, :cond_8

    .line 26397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26399
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26400
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessageHtml_:Ljava/lang/Object;

    .line 26402
    return-object p0
.end method

.method public setEventsData(Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26435
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .line 26437
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26438
    return-object p0
.end method

.method public setEventsData(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26425
    if-nez p1, :cond_8

    .line 26426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26428
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->eventsData_:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .line 26430
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26431
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26260
    if-nez p1, :cond_8

    .line 26261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26263
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26264
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 26266
    return-object p0
.end method

.method public setNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26468
    if-nez p1, :cond_8

    .line 26469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26471
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26472
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->notificationType_:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    .line 26474
    return-object p0
.end method

.method public setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26220
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 26222
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26223
    return-object p0
.end method

.method public setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26210
    if-nez p1, :cond_8

    .line 26211
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26213
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 26215
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26216
    return-object p0
.end method

.method public setPushEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26368
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26369
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    .line 26371
    return-object p0
.end method

.method public setRead(Z)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26125
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26126
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    .line 26128
    return-object p0
.end method

.method public setStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26177
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 26179
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26180
    return-object p0
.end method

.method public setStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26167
    if-nez p1, :cond_8

    .line 26168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26170
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 26172
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26173
    return-object p0
.end method

.method public setTimestamp(D)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26146
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26147
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    .line 26149
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26101
    if-nez p1, :cond_8

    .line 26102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26104
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 26105
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 26107
    return-object p0
.end method
