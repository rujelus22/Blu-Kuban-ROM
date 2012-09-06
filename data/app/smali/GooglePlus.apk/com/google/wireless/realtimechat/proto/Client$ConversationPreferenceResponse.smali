.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationPreferenceResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

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
    .line 20990
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 20991
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->initFields()V

    .line 20992
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20666
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20704
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->memoizedIsInitialized:B

    .line 20724
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->memoizedSerializedSize:I

    .line 20667
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20661
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20704
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->memoizedIsInitialized:B

    .line 20724
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->memoizedSerializedSize:I

    .line 20668
    return-void
.end method

.method static synthetic access$28002(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20661
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$28102(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20661
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$28202(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20661
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 1

    .prologue
    .line 20672
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 20701
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 20702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->timestamp_:J

    .line 20703
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 1

    .prologue
    .line 20816
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->access$27800()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20819
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20661
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2

    .prologue
    .line 20676
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 20726
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->memoizedSerializedSize:I

    .line 20727
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 20739
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 20729
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 20730
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 20731
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 20734
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 20735
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 20738
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 20739
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 20687
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 20697
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20684
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->bitField0_:I

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
    .line 20694
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->bitField0_:I

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

    .line 20706
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->memoizedIsInitialized:B

    .line 20707
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 20710
    :goto_8
    return v1

    .line 20707
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 20709
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20661
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 2

    .prologue
    .line 20817
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20661
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 2

    .prologue
    .line 20821
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

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
    .line 20746
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

    .line 20715
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getSerializedSize()I

    .line 20716
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 20717
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 20719
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 20720
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 20722
    :cond_1f
    return-void
.end method
