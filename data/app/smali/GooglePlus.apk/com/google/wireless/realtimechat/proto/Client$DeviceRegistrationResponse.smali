.class public final Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceRegistrationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

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
    .line 28948
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 28949
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->initFields()V

    .line 28950
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28624
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28662
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->memoizedIsInitialized:B

    .line 28682
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->memoizedSerializedSize:I

    .line 28625
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28619
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28626
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28662
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->memoizedIsInitialized:B

    .line 28682
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->memoizedSerializedSize:I

    .line 28626
    return-void
.end method

.method static synthetic access$39202(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28619
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$39302(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28619
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$39402(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28619
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 1

    .prologue
    .line 28630
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 28659
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->timestamp_:J

    .line 28660
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 28661
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 1

    .prologue
    .line 28774
    #calls: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->access$39000()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 28777
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28619
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2

    .prologue
    .line 28634
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 28684
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->memoizedSerializedSize:I

    .line 28685
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 28697
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 28687
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 28688
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 28689
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28692
    :cond_17
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_28

    .line 28693
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28696
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 28697
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 28655
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 28645
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 28652
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28642
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->bitField0_:I

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

    .line 28664
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->memoizedIsInitialized:B

    .line 28665
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 28668
    :goto_8
    return v1

    .line 28665
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 28667
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28619
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 2

    .prologue
    .line 28775
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28619
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 2

    .prologue
    .line 28779
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

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
    .line 28704
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

    .line 28673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getSerializedSize()I

    .line 28674
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 28675
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 28677
    :cond_10
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1f

    .line 28678
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 28680
    :cond_1f
    return-void
.end method
