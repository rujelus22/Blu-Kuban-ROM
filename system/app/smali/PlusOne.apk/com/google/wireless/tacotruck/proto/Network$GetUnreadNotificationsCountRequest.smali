.class public final Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetUnreadNotificationsCountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33023
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    .line 33024
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->initFields()V

    .line 33025
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32644
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32685
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedIsInitialized:B

    .line 32705
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedSerializedSize:I

    .line 32645
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32639
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32646
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32685
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedIsInitialized:B

    .line 32705
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedSerializedSize:I

    .line 32646
    return-void
.end method

.method static synthetic access$45502(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32639
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    return p1
.end method

.method static synthetic access$45600(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32639
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$45602(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32639
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$45702(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32639
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    .registers 1

    .prologue
    .line 32650
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 32682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    .line 32683
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    .line 32684
    return-void
.end method


# virtual methods
.method public getCoalesceCircleNotifications()Z
    .registers 2

    .prologue
    .line 32665
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32639
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    .registers 2

    .prologue
    .line 32654
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    return-object v0
.end method

.method public getIncludedNotificationType(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 3
    .parameter "index"

    .prologue
    .line 32678
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    return-object v0
.end method

.method public getIncludedNotificationTypeCount()I
    .registers 2

    .prologue
    .line 32675
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

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
    .line 32672
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 32707
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedSerializedSize:I

    .line 32708
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 32725
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 32710
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 32711
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_16

    .line 32712
    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 32716
    :cond_16
    const/4 v0, 0x0

    .line 32717
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_34

    .line 32718
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 32717
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 32721
    :cond_34
    add-int/2addr v2, v0

    .line 32722
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 32724
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 32725
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasCoalesceCircleNotifications()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32662
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 32732
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
    const/4 v2, 0x1

    .line 32696
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getSerializedSize()I

    .line 32697
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_f

    .line 32698
    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 32700
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 32701
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 32700
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 32703
    :cond_2b
    return-void
.end method
