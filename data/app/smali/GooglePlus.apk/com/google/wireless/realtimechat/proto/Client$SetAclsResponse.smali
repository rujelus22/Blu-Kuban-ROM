.class public final Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetAclsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

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
    .line 33891
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 33892
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->initFields()V

    .line 33893
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33567
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33605
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->memoizedIsInitialized:B

    .line 33625
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->memoizedSerializedSize:I

    .line 33568
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33562
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33569
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33605
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->memoizedIsInitialized:B

    .line 33625
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->memoizedSerializedSize:I

    .line 33569
    return-void
.end method

.method static synthetic access$46902(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33562
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$47002(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33562
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$47102(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33562
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 1

    .prologue
    .line 33573
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 33602
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 33603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->timestamp_:J

    .line 33604
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 1

    .prologue
    .line 33717
    #calls: Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->access$46700()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 33720
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33562
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 2

    .prologue
    .line 33577
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 33627
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->memoizedSerializedSize:I

    .line 33628
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 33640
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 33630
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 33631
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 33632
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 33635
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 33636
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 33639
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 33640
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 33588
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 33598
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33585
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->bitField0_:I

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
    .line 33595
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->bitField0_:I

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

    .line 33607
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->memoizedIsInitialized:B

    .line 33608
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 33611
    :goto_8
    return v1

    .line 33608
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 33610
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33562
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 2

    .prologue
    .line 33718
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33562
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 2

    .prologue
    .line 33722
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

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
    .line 33647
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

    .line 33616
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getSerializedSize()I

    .line 33617
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 33618
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33620
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 33621
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 33623
    :cond_1f
    return-void
.end method
