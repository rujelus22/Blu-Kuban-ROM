.class public final Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetDefaultNotificationSettingsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private userGaiaId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43357
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    .line 43358
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->initFields()V

    .line 43359
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43033
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 43071
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->memoizedIsInitialized:B

    .line 43091
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->memoizedSerializedSize:I

    .line 43034
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43028
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 43035
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 43071
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->memoizedIsInitialized:B

    .line 43091
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->memoizedSerializedSize:I

    .line 43035
    return-void
.end method

.method static synthetic access$60302(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43028
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->userGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$60402(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43028
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object p1
.end method

.method static synthetic access$60502(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43028
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;
    .registers 1

    .prologue
    .line 43039
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 43068
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->userGaiaId_:J

    .line 43069
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 43070
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 43183
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->access$60100()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChannelToEnable()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2

    .prologue
    .line 43064
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43028
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;
    .registers 2

    .prologue
    .line 43043
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 43093
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->memoizedSerializedSize:I

    .line 43094
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 43106
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 43096
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 43097
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 43098
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->userGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 43101
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_28

    .line 43102
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 43105
    :cond_28
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 43106
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getUserGaiaId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43054
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->userGaiaId_:J

    return-wide v0
.end method

.method public hasChannelToEnable()Z
    .registers 3

    .prologue
    .line 43061
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->bitField0_:I

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

    .line 43051
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->bitField0_:I

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

    .line 43073
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->memoizedIsInitialized:B

    .line 43074
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 43077
    :goto_8
    return v1

    .line 43074
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 43076
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->memoizedIsInitialized:B

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
    .line 43113
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

    .line 43082
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->getSerializedSize()I

    .line 43083
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 43084
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->userGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 43086
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1f

    .line 43087
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 43089
    :cond_1f
    return-void
.end method
