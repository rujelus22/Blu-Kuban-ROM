.class public final Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationSettingsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

.field private userGaiaId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41647
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    .line 41648
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->initFields()V

    .line 41649
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 41244
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 41293
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->memoizedIsInitialized:B

    .line 41316
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->memoizedSerializedSize:I

    .line 41245
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41239
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 41246
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41293
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->memoizedIsInitialized:B

    .line 41316
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->memoizedSerializedSize:I

    .line 41246
    return-void
.end method

.method static synthetic access$57602(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41239
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->userGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$57702(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41239
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object p1
.end method

.method static synthetic access$57802(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41239
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object p1
.end method

.method static synthetic access$57902(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41239
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;
    .registers 1

    .prologue
    .line 41250
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 41289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->userGaiaId_:J

    .line 41290
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 41291
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->EMAIL:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 41292
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 41412
    #calls: Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->access$57400()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChannel()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2

    .prologue
    .line 41285
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41239
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;
    .registers 2

    .prologue
    .line 41254
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    return-object v0
.end method

.method public getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2

    .prologue
    .line 41275
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 41318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->memoizedSerializedSize:I

    .line 41319
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 41335
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 41321
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 41322
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 41323
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->userGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41326
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_24

    .line 41327
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41330
    :cond_24
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 41331
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 41334
    :cond_37
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 41335
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getUserGaiaId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41265
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->userGaiaId_:J

    return-wide v0
.end method

.method public hasChannel()Z
    .registers 3

    .prologue
    .line 41282
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

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

.method public hasNotificationSettings()Z
    .registers 3

    .prologue
    .line 41272
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

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

.method public hasUserGaiaId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 41262
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

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

    .line 41295
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->memoizedIsInitialized:B

    .line 41296
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 41299
    :goto_8
    return v1

    .line 41296
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 41298
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->memoizedIsInitialized:B

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
    .line 41342
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 41304
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->getSerializedSize()I

    .line 41305
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 41306
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->userGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 41308
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1b

    .line 41309
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 41311
    :cond_1b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 41312
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 41314
    :cond_2c
    return-void
.end method
