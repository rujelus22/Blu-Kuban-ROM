.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationRenameResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

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
    .line 13815
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 13816
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->initFields()V

    .line 13817
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13491
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13529
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->memoizedIsInitialized:B

    .line 13549
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->memoizedSerializedSize:I

    .line 13492
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13486
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13493
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13529
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->memoizedIsInitialized:B

    .line 13549
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->memoizedSerializedSize:I

    .line 13493
    return-void
.end method

.method static synthetic access$18402(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13486
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$18502(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13486
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$18602(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13486
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 1

    .prologue
    .line 13497
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 13526
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 13527
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->timestamp_:J

    .line 13528
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 1

    .prologue
    .line 13641
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->access$18200()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13644
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2

    .prologue
    .line 13501
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13551
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->memoizedSerializedSize:I

    .line 13552
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 13564
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 13554
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 13555
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 13556
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13559
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 13560
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13563
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 13564
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 13512
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 13522
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13509
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->bitField0_:I

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
    .line 13519
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->bitField0_:I

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

    .line 13531
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->memoizedIsInitialized:B

    .line 13532
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13535
    :goto_8
    return v1

    .line 13532
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13534
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 2

    .prologue
    .line 13642
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 2

    .prologue
    .line 13646
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

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
    .line 13571
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

    .line 13540
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getSerializedSize()I

    .line 13541
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 13542
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13544
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 13545
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13547
    :cond_1f
    return-void
.end method
