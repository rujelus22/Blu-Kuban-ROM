.class public final Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReplyToInviteResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

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
    .line 33113
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 33114
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->initFields()V

    .line 33115
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32789
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32827
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->memoizedIsInitialized:B

    .line 32847
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->memoizedSerializedSize:I

    .line 32790
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32784
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32791
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32827
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->memoizedIsInitialized:B

    .line 32847
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->memoizedSerializedSize:I

    .line 32791
    return-void
.end method

.method static synthetic access$45702(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32784
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$45802(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32784
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$45902(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32784
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 1

    .prologue
    .line 32795
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 32824
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 32825
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->timestamp_:J

    .line 32826
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 1

    .prologue
    .line 32939
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->access$45500()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 32942
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2

    .prologue
    .line 32799
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 32849
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->memoizedSerializedSize:I

    .line 32850
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 32862
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 32852
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 32853
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 32854
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 32857
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 32858
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 32861
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 32862
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 32810
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 32820
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32807
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->bitField0_:I

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
    .line 32817
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->bitField0_:I

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

    .line 32829
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->memoizedIsInitialized:B

    .line 32830
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 32833
    :goto_8
    return v1

    .line 32830
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 32832
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->memoizedIsInitialized:B

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
    .line 32869
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

    .line 32838
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getSerializedSize()I

    .line 32839
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 32840
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 32842
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 32843
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 32845
    :cond_1f
    return-void
.end method
