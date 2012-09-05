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

.field private displayMessage_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

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
    .line 23920
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 24194
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 24260
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 24303
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 24346
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 24382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 24418
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 23921
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->maybeForceBuilderInitialization()V

    .line 23922
    return-void
.end method

.method static synthetic access$32000()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 1

    .prologue
    .line 23915
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 1

    .prologue
    .line 23927
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23925
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 3

    .prologue
    .line 23964
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    .line 23965
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23966
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23968
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 6

    .prologue
    .line 23982
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 23983
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23984
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23985
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23986
    or-int/lit8 v2, v2, 0x1

    .line 23988
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$32202(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23989
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 23990
    or-int/lit8 v2, v2, 0x2

    .line 23992
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$32302(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23993
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 23994
    or-int/lit8 v2, v2, 0x4

    .line 23996
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$32402(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Z)Z

    .line 23997
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 23998
    or-int/lit8 v2, v2, 0x8

    .line 24000
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$32502(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;D)D

    .line 24001
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 24002
    or-int/lit8 v2, v2, 0x10

    .line 24004
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$32602(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 24005
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 24006
    or-int/lit8 v2, v2, 0x20

    .line 24008
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$32702(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 24009
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 24010
    or-int/lit8 v2, v2, 0x40

    .line 24012
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$32802(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24013
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 24014
    or-int/lit16 v2, v2, 0x80

    .line 24016
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$32902(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24017
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 24018
    or-int/lit16 v2, v2, 0x100

    .line 24020
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$33002(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 24021
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 24022
    or-int/lit16 v2, v2, 0x200

    .line 24024
    :cond_83
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$33102(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Z)Z

    .line 24025
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->access$33202(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;I)I

    .line 24026
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 23931
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 23933
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23934
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23936
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    .line 23937
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23938
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    .line 23939
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23940
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 23941
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23942
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 23943
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 23945
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 23947
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23948
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 23949
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23950
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    .line 23951
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 23952
    return-object p0
.end method

.method public clearActivitySnippet()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 24406
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24407
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 24409
    return-object p0
.end method

.method public clearCircleData()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 24454
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 24456
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24457
    return-object p0
.end method

.method public clearDisplayMessage()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 24182
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24183
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 24185
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 24370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24371
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 24373
    return-object p0
.end method

.method public clearPhotoData()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 24339
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 24341
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24342
    return-object p0
.end method

.method public clearPushEnabled()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 24475
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    .line 24478
    return-object p0
.end method

.method public clearRead()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 24232
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    .line 24235
    return-object p0
.end method

.method public clearStreamData()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 24296
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 24298
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24299
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3

    .prologue
    .line 24253
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    .line 24256
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 2

    .prologue
    .line 24211
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24212
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 24214
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3

    .prologue
    .line 23956
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
    .line 23915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivitySnippet()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24387
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 24388
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24389
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24390
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 24393
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
    .line 24423
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 2

    .prologue
    .line 23960
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24163
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 24164
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24165
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24166
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 24169
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

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24351
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 24352
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24353
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24354
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 24357
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

.method public getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2

    .prologue
    .line 24308
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object v0
.end method

.method public getPushEnabled()Z
    .registers 2

    .prologue
    .line 24466
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    return v0
.end method

.method public getRead()Z
    .registers 2

    .prologue
    .line 24223
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    return v0
.end method

.method public getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 2

    .prologue
    .line 24265
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    return-object v0
.end method

.method public getTimestamp()D
    .registers 3

    .prologue
    .line 24244
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .registers 2

    .prologue
    .line 24199
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    return-object v0
.end method

.method public hasActivitySnippet()Z
    .registers 3

    .prologue
    .line 24384
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
    .line 24420
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

    .line 24160
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 24348
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

.method public hasPhotoData()Z
    .registers 3

    .prologue
    .line 24305
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
    .line 24463
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
    .line 24220
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
    .line 24262
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
    .line 24241
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
    .line 24196
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

.method public mergeCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24442
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 24444
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 24450
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24451
    return-object p0

    .line 24447
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

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
    .line 23915
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

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
    .line 23915
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
    .line 24073
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 24074
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_c8

    .line 24079
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 24081
    :sswitch_d
    return-object p0

    .line 24086
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24087
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    goto :goto_0

    .line 24091
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 24092
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v3

    .line 24093
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    if-eqz v3, :cond_0

    .line 24094
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24095
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_0

    .line 24100
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24101
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    goto :goto_0

    .line 24105
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24106
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    goto :goto_0

    .line 24110
    :sswitch_48
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v1

    .line 24111
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->hasStreamData()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 24112
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    .line 24114
    :cond_59
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 24115
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    goto :goto_0

    .line 24119
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    :sswitch_64
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v1

    .line 24120
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->hasPhotoData()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 24121
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    .line 24123
    :cond_75
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 24124
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    goto :goto_0

    .line 24128
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    :sswitch_80
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24129
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 24133
    :sswitch_8e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24134
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 24138
    :sswitch_9c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v1

    .line 24139
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->hasCircleData()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 24140
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->getCircleData()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    .line 24142
    :cond_ad
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 24143
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    goto/16 :goto_0

    .line 24147
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    :sswitch_b9
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24148
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    goto/16 :goto_0

    .line 24074
    nop

    :sswitch_data_c8
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
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 24030
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24061
    :cond_6
    :goto_6
    return-object p0

    .line 24031
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasDisplayMessage()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24032
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setDisplayMessage(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 24034
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 24035
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 24037
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasRead()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 24038
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setRead(Z)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 24040
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 24041
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setTimestamp(D)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 24043
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasStreamData()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 24044
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 24046
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPhotoData()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 24047
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergePhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 24049
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 24050
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 24052
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasActivitySnippet()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 24053
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setActivitySnippet(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 24055
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasCircleData()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 24056
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getCircleData()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->mergeCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    .line 24058
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24059
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPushEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->setPushEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24327
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 24329
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 24335
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24336
    return-object p0

    .line 24332
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    goto :goto_20
.end method

.method public mergeStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24284
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 24286
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 24292
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24293
    return-object p0

    .line 24289
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    goto :goto_20
.end method

.method public setActivitySnippet(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24397
    if-nez p1, :cond_8

    .line 24398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24400
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24401
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->activitySnippet_:Ljava/lang/Object;

    .line 24403
    return-object p0
.end method

.method public setCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 24436
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 24438
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24439
    return-object p0
.end method

.method public setCircleData(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24426
    if-nez p1, :cond_8

    .line 24427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24429
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 24431
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24432
    return-object p0
.end method

.method public setDisplayMessage(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24173
    if-nez p1, :cond_8

    .line 24174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24176
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24177
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->displayMessage_:Ljava/lang/Object;

    .line 24179
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24361
    if-nez p1, :cond_8

    .line 24362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24364
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24365
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->id_:Ljava/lang/Object;

    .line 24367
    return-object p0
.end method

.method public setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 24321
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 24323
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24324
    return-object p0
.end method

.method public setPhotoData(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24311
    if-nez p1, :cond_8

    .line 24312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24314
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 24316
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24317
    return-object p0
.end method

.method public setPushEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24469
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24470
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->pushEnabled_:Z

    .line 24472
    return-object p0
.end method

.method public setRead(Z)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24226
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24227
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->read_:Z

    .line 24229
    return-object p0
.end method

.method public setStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 24278
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 24280
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24281
    return-object p0
.end method

.method public setStreamData(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24268
    if-nez p1, :cond_8

    .line 24269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24271
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 24273
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24274
    return-object p0
.end method

.method public setTimestamp(D)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24247
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24248
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->timestamp_:D

    .line 24250
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24202
    if-nez p1, :cond_8

    .line 24203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24205
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->bitField0_:I

    .line 24206
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 24208
    return-object p0
.end method
