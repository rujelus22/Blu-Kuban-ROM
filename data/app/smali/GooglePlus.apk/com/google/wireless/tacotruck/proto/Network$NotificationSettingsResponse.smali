.class public final Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationSettingsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42752
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    .line 42753
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->initFields()V

    .line 42754
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 42462
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 42489
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->memoizedIsInitialized:B

    .line 42506
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->memoizedSerializedSize:I

    .line 42463
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42457
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 42464
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 42489
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->memoizedIsInitialized:B

    .line 42506
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->memoizedSerializedSize:I

    .line 42464
    return-void
.end method

.method static synthetic access$59202(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42457
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object p1
.end method

.method static synthetic access$59302(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42457
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    .registers 1

    .prologue
    .line 42468
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 42487
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 42488
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 42594
    #calls: Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->access$59000()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 42597
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42530
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->access$58900(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    .registers 2

    .prologue
    .line 42472
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    return-object v0
.end method

.method public getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2

    .prologue
    .line 42483
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 42508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->memoizedSerializedSize:I

    .line 42509
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 42517
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 42511
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 42512
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 42513
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42516
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 42517
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasNotificationSettings()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42480
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->bitField0_:I

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

    .line 42491
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->memoizedIsInitialized:B

    .line 42492
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 42495
    :goto_8
    return v1

    .line 42492
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 42494
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 42595
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 42599
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

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
    .line 42524
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 42500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->getSerializedSize()I

    .line 42501
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 42502
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 42504
    :cond_f
    return-void
.end method
