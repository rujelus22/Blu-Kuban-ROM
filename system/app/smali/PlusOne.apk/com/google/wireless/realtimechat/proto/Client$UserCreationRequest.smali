.class public final Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserCreationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29340
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 29341
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->initFields()V

    .line 29342
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28971
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 29009
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->memoizedIsInitialized:B

    .line 29029
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->memoizedSerializedSize:I

    .line 28972
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28966
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28973
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29009
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->memoizedIsInitialized:B

    .line 29029
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->memoizedSerializedSize:I

    .line 28973
    return-void
.end method

.method static synthetic access$39802(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28966
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object p1
.end method

.method static synthetic access$39902(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28966
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$40002(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28966
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 1

    .prologue
    .line 28977
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 29006
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 29007
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 29008
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 1

    .prologue
    .line 29121
    #calls: Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->access$39600()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 29124
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28966
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2

    .prologue
    .line 28981
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object v0
.end method

.method public getDeviceRegistration()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 28992
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 29031
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->memoizedSerializedSize:I

    .line 29032
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 29044
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 29034
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 29035
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 29036
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29039
    :cond_17
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 29040
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29043
    :cond_24
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 29044
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 29002
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasDeviceRegistration()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28989
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 28999
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->bitField0_:I

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

    .line 29011
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->memoizedIsInitialized:B

    .line 29012
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 29015
    :goto_8
    return v1

    .line 29012
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 29014
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->memoizedIsInitialized:B

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
    .line 29051
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 29020
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getSerializedSize()I

    .line 29021
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 29022
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29024
    :cond_10
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 29025
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29027
    :cond_1b
    return-void
.end method
