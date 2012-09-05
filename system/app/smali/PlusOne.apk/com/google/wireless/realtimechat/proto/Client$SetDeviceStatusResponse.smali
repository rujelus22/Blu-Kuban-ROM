.class public final Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetDeviceStatusResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32156
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    .line 32157
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->initFields()V

    .line 32158
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31832
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 31870
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->memoizedIsInitialized:B

    .line 31890
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->memoizedSerializedSize:I

    .line 31833
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31827
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31834
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31870
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->memoizedIsInitialized:B

    .line 31890
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->memoizedSerializedSize:I

    .line 31834
    return-void
.end method

.method static synthetic access$44302(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31827
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$44402(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31827
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$44502(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31827
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;
    .registers 1

    .prologue
    .line 31838
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 31867
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 31868
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->timestamp_:J

    .line 31869
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31827
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;
    .registers 2

    .prologue
    .line 31842
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 31892
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->memoizedSerializedSize:I

    .line 31893
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 31905
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 31895
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 31896
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 31897
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 31900
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 31901
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31904
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 31905
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 31853
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 31863
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 31850
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 31860
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 31912
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

    .line 31881
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->getSerializedSize()I

    .line 31882
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 31883
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31885
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 31886
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 31888
    :cond_1f
    return-void
.end method
