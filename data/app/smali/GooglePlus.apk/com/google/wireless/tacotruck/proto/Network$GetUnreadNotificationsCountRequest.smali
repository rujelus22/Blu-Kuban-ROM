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
    .line 33631
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    .line 33632
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->initFields()V

    .line 33633
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33252
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33293
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedIsInitialized:B

    .line 33313
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedSerializedSize:I

    .line 33253
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33247
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33254
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33293
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedIsInitialized:B

    .line 33313
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedSerializedSize:I

    .line 33254
    return-void
.end method

.method static synthetic access$46202(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33247
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    return p1
.end method

.method static synthetic access$46300(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33247
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$46302(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33247
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$46402(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33247
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    .registers 1

    .prologue
    .line 33258
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 33290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    .line 33291
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    .line 33292
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 1

    .prologue
    .line 33410
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->access$46000()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 33413
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCoalesceCircleNotifications()Z
    .registers 2

    .prologue
    .line 33273
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33247
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    .registers 2

    .prologue
    .line 33262
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    return-object v0
.end method

.method public getIncludedNotificationType(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 3
    .parameter "index"

    .prologue
    .line 33286
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    return-object v0
.end method

.method public getIncludedNotificationTypeCount()I
    .registers 2

    .prologue
    .line 33283
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
    .line 33280
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 33315
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedSerializedSize:I

    .line 33316
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 33333
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 33318
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 33319
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_16

    .line 33320
    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 33324
    :cond_16
    const/4 v0, 0x0

    .line 33325
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_34

    .line 33326
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 33325
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 33329
    :cond_34
    add-int/2addr v2, v0

    .line 33330
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 33332
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 33333
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasCoalesceCircleNotifications()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33270
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I

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

    .line 33295
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedIsInitialized:B

    .line 33296
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 33299
    :goto_8
    return v1

    .line 33296
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 33298
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33247
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 2

    .prologue
    .line 33411
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33247
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 2

    .prologue
    .line 33415
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

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
    .line 33340
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

    .line 33304
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getSerializedSize()I

    .line 33305
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_f

    .line 33306
    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 33308
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 33309
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33308
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 33311
    :cond_2b
    return-void
.end method
