.class public final Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetNotificationsLastReadTimeRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private lastReadTime_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34197
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;

    .line 34198
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->initFields()V

    .line 34199
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33933
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33960
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->memoizedIsInitialized:B

    .line 33977
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->memoizedSerializedSize:I

    .line 33934
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33928
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33935
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33960
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->memoizedIsInitialized:B

    .line 33977
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->memoizedSerializedSize:I

    .line 33935
    return-void
.end method

.method static synthetic access$47302(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33928
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->lastReadTime_:D

    return-wide p1
.end method

.method static synthetic access$47402(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33928
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;
    .registers 1

    .prologue
    .line 33939
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 33958
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->lastReadTime_:D

    .line 33959
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;
    .registers 1

    .prologue
    .line 34065
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;->access$47100()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34068
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33928
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;
    .registers 2

    .prologue
    .line 33943
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;

    return-object v0
.end method

.method public getLastReadTime()D
    .registers 3

    .prologue
    .line 33954
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->lastReadTime_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 33979
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->memoizedSerializedSize:I

    .line 33980
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 33988
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 33982
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 33983
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_16

    .line 33984
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->lastReadTime_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 33987
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 33988
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasLastReadTime()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33951
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->bitField0_:I

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

    .line 33962
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->memoizedIsInitialized:B

    .line 33963
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 33966
    :goto_8
    return v1

    .line 33963
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 33965
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33928
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;
    .registers 2

    .prologue
    .line 34066
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33928
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;
    .registers 2

    .prologue
    .line 34070
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

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
    .line 33995
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
    const/4 v2, 0x1

    .line 33971
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->getSerializedSize()I

    .line 33972
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_f

    .line 33973
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->lastReadTime_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 33975
    :cond_f
    return-void
.end method
