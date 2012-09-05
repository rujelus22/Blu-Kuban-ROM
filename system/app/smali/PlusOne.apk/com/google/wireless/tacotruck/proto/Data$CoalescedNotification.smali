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

.field private displayMessage_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
    .line 24485
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    .line 24486
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->initFields()V

    .line 24487
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23480
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23740
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedIsInitialized:B

    .line 23784
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedSerializedSize:I

    .line 23481
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23482
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23740
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedIsInitialized:B

    .line 23784
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedSerializedSize:I

    .line 23482
    return-void
.end method

.method static synthetic access$32202(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32302(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    return-object p1
.end method

.method static synthetic access$32402(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z

    return p1
.end method

.method static synthetic access$32502(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    return-wide p1
.end method

.method static synthetic access$32602(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    return-object p1
.end method

.method static synthetic access$32702(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object p1
.end method

.method static synthetic access$32802(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32902(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33002(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object p1
.end method

.method static synthetic access$33102(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    return p1
.end method

.method static synthetic access$33202(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23475
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    return p1
.end method

.method private getActivitySnippetBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23697
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    .line 23698
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23699
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23701
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    .line 23704
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
    .line 23486
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    return-object v0
.end method

.method private getDisplayMessageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23583
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    .line 23584
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23585
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23587
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    .line 23590
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
    .line 23665
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    .line 23666
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23667
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23669
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    .line 23672
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

    .line 23729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    .line 23730
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23731
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z

    .line 23732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    .line 23733
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 23734
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 23735
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    .line 23736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    .line 23737
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 23738
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    .line 23739
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    .registers 1

    .prologue
    .line 23908
    #calls: Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;->access$32000()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivitySnippet()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23683
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    .line 23684
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23685
    check-cast v1, Ljava/lang/String;

    .line 23693
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23687
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23689
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23690
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23691
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->activitySnippet_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23693
    goto :goto_8
.end method

.method public getCircleData()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 2

    .prologue
    .line 23715
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23475
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 2

    .prologue
    .line 23490
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    return-object v0
.end method

.method public getDisplayMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23569
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    .line 23570
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23571
    check-cast v1, Ljava/lang/String;

    .line 23579
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23573
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23575
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23576
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23577
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->displayMessage_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23579
    goto :goto_8
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23651
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    .line 23652
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23653
    check-cast v1, Ljava/lang/String;

    .line 23661
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23655
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23657
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23658
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23659
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23661
    goto :goto_8
.end method

.method public getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2

    .prologue
    .line 23641
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object v0
.end method

.method public getPushEnabled()Z
    .registers 2

    .prologue
    .line 23725
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    return v0
.end method

.method public getRead()Z
    .registers 2

    .prologue
    .line 23611
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

    .line 23786
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedSerializedSize:I

    .line 23787
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 23831
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 23789
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 23790
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 23791
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23794
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2d

    .line 23795
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 23798
    :cond_2d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 23799
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23802
    :cond_3b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_48

    .line 23803
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 23806
    :cond_48
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 23807
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23810
    :cond_58
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_68

    .line 23811
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23814
    :cond_68
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7a

    .line 23815
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23818
    :cond_7a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8b

    .line 23819
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23822
    :cond_8b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9c

    .line 23823
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23826
    :cond_9c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_ad

    .line 23827
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23830
    :cond_ad
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedSerializedSize:I

    move v1, v0

    .line 23831
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 2

    .prologue
    .line 23631
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    return-object v0
.end method

.method public getTimestamp()D
    .registers 3

    .prologue
    .line 23621
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .registers 2

    .prologue
    .line 23601
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    return-object v0
.end method

.method public hasActivitySnippet()Z
    .registers 3

    .prologue
    .line 23680
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
    .line 23712
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

    .line 23566
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

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
    .line 23648
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

.method public hasPhotoData()Z
    .registers 3

    .prologue
    .line 23638
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
    .line 23722
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
    .line 23608
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
    .line 23628
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
    .line 23618
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
    .line 23598
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

    .line 23742
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedIsInitialized:B

    .line 23743
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 23746
    :goto_8
    return v1

    .line 23743
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 23745
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->memoizedIsInitialized:B

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
    .line 23838
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

    .line 23751
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getSerializedSize()I

    .line 23752
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 23753
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23755
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_24

    .line 23756
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->type_:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 23758
    :cond_24
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 23759
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->read_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 23761
    :cond_30
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 23762
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->timestamp_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 23764
    :cond_3b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 23765
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->streamData_:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23767
    :cond_49
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 23768
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23770
    :cond_57
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_67

    .line 23771
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23773
    :cond_67
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_76

    .line 23774
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23776
    :cond_76
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_85

    .line 23777
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->circleData_:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23779
    :cond_85
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_94

    .line 23780
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->pushEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 23782
    :cond_94
    return-void
.end method
