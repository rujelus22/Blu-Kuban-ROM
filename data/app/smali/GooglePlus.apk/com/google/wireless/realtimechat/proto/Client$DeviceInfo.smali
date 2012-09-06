.class public final Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

.field private static final serialVersionUID:J


# instance fields
.field private androidId_:J

.field private appId_:Ljava/lang/Object;

.field private bitField0_:I

.field private clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

.field private createdAt_:J

.field private enabled_:Z

.field private markedForDeletionAt_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/Object;

.field private pushEnabled_:Z

.field private token_:Lcom/google/protobuf/ByteString;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

.field private updatedAt_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38832
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    .line 38833
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->initFields()V

    .line 38834
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 37884
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 38109
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->memoizedIsInitialized:B

    .line 38156
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->memoizedSerializedSize:I

    .line 37885
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;-><init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37886
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38109
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->memoizedIsInitialized:B

    .line 38156
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->memoizedSerializedSize:I

    .line 37886
    return-void
.end method

.method static synthetic access$52602(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    return-object p1
.end method

.method static synthetic access$52702(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->enabled_:Z

    return p1
.end method

.method static synthetic access$52802(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->pushEnabled_:Z

    return p1
.end method

.method static synthetic access$52902(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->token_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$53002(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53102(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->createdAt_:J

    return-wide p1
.end method

.method static synthetic access$53202(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->updatedAt_:J

    return-wide p1
.end method

.method static synthetic access$53302(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->markedForDeletionAt_:J

    return-wide p1
.end method

.method static synthetic access$53402(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->appId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53502(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->androidId_:J

    return-wide p1
.end method

.method static synthetic access$53602(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object p1
.end method

.method static synthetic access$53702(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37879
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    return p1
.end method

.method private getAppIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38065
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->appId_:Ljava/lang/Object;

    .line 38066
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38067
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38069
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->appId_:Ljava/lang/Object;

    .line 38072
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
    .registers 1

    .prologue
    .line 37890
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    return-object v0
.end method

.method private getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38003
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->phoneNumber_:Ljava/lang/Object;

    .line 38004
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38005
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38007
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->phoneNumber_:Ljava/lang/Object;

    .line 38010
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
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 38097
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 38098
    iput-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->enabled_:Z

    .line 38099
    iput-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->pushEnabled_:Z

    .line 38100
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->token_:Lcom/google/protobuf/ByteString;

    .line 38101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->phoneNumber_:Ljava/lang/Object;

    .line 38102
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->createdAt_:J

    .line 38103
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->updatedAt_:J

    .line 38104
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->markedForDeletionAt_:J

    .line 38105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->appId_:Ljava/lang/Object;

    .line 38106
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->androidId_:J

    .line 38107
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 38108
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 1

    .prologue
    .line 38284
    #calls: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->access$52400()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 38287
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAndroidId()J
    .registers 3

    .prologue
    .line 38083
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->androidId_:J

    return-wide v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38051
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->appId_:Ljava/lang/Object;

    .line 38052
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38053
    check-cast v1, Ljava/lang/String;

    .line 38061
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38055
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38057
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38058
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38059
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->appId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38061
    goto :goto_8
.end method

.method public getClientVersion()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2

    .prologue
    .line 38093
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object v0
.end method

.method public getCreatedAt()J
    .registers 3

    .prologue
    .line 38021
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->createdAt_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37879
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
    .registers 2

    .prologue
    .line 37894
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2

    .prologue
    .line 37959
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->enabled_:Z

    return v0
.end method

.method public getMarkedForDeletionAt()J
    .registers 3

    .prologue
    .line 38041
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->markedForDeletionAt_:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 37989
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->phoneNumber_:Ljava/lang/Object;

    .line 37990
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 37991
    check-cast v1, Ljava/lang/String;

    .line 37999
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 37993
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 37995
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 37996
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 37997
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 37999
    goto :goto_8
.end method

.method public getPushEnabled()Z
    .registers 2

    .prologue
    .line 37969
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->pushEnabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 38158
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->memoizedSerializedSize:I

    .line 38159
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 38207
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 38161
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 38162
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 38163
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 38166
    :cond_1e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 38167
    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->enabled_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38170
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 38171
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->pushEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38174
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_46

    .line 38175
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->token_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38178
    :cond_46
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 38179
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38182
    :cond_58
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_68

    .line 38183
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->createdAt_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38186
    :cond_68
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_78

    .line 38187
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->updatedAt_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38190
    :cond_78
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_87

    .line 38191
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->markedForDeletionAt_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38194
    :cond_87
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9a

    .line 38195
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38198
    :cond_9a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_ab

    .line 38199
    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->androidId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38202
    :cond_ab
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_bc

    .line 38203
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38206
    :cond_bc
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 38207
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 37979
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->token_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    .registers 2

    .prologue
    .line 37949
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    return-object v0
.end method

.method public getUpdatedAt()J
    .registers 3

    .prologue
    .line 38031
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->updatedAt_:J

    return-wide v0
.end method

.method public hasAndroidId()Z
    .registers 3

    .prologue
    .line 38080
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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

.method public hasAppId()Z
    .registers 3

    .prologue
    .line 38048
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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

.method public hasClientVersion()Z
    .registers 3

    .prologue
    .line 38090
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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

.method public hasCreatedAt()Z
    .registers 3

    .prologue
    .line 38018
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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

.method public hasEnabled()Z
    .registers 3

    .prologue
    .line 37956
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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

.method public hasMarkedForDeletionAt()Z
    .registers 3

    .prologue
    .line 38038
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 37986
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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

.method public hasPushEnabled()Z
    .registers 3

    .prologue
    .line 37966
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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

.method public hasToken()Z
    .registers 3

    .prologue
    .line 37976
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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
    const/4 v0, 0x1

    .line 37946
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUpdatedAt()Z
    .registers 3

    .prologue
    .line 38028
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 38111
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->memoizedIsInitialized:B

    .line 38112
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 38115
    :goto_8
    return v1

    .line 38112
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 38114
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37879
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 38285
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37879
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 38289
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

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
    .line 38214
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

    .line 38120
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getSerializedSize()I

    .line 38121
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 38122
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 38124
    :cond_17
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 38125
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->enabled_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 38127
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 38128
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->pushEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 38130
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_39

    .line 38131
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->token_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38133
    :cond_39
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 38134
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38136
    :cond_49
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 38137
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->createdAt_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 38139
    :cond_57
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_65

    .line 38140
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->updatedAt_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 38142
    :cond_65
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_72

    .line 38143
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->markedForDeletionAt_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 38145
    :cond_72
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_83

    .line 38146
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38148
    :cond_83
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_92

    .line 38149
    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->androidId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 38151
    :cond_92
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a1

    .line 38152
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 38154
    :cond_a1
    return-void
.end method
