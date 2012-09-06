.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BunchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

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
    .line 31338
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    .line 31339
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->initFields()V

    .line 31340
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31014
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 31052
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->memoizedIsInitialized:B

    .line 31072
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->memoizedSerializedSize:I

    .line 31015
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31009
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31016
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31052
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->memoizedIsInitialized:B

    .line 31072
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->memoizedSerializedSize:I

    .line 31016
    return-void
.end method

.method static synthetic access$43002(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31009
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$43102(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31009
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$43202(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31009
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;
    .registers 1

    .prologue
    .line 31020
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 31049
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 31050
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->timestamp_:J

    .line 31051
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 1

    .prologue
    .line 31164
    #calls: Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->access$42800()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 31167
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31009
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;
    .registers 2

    .prologue
    .line 31024
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 31074
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->memoizedSerializedSize:I

    .line 31075
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 31087
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 31077
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 31078
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 31079
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 31082
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 31083
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31086
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 31087
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 31035
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 31045
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 31032
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->bitField0_:I

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
    .line 31042
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->bitField0_:I

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

    .line 31054
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->memoizedIsInitialized:B

    .line 31055
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 31058
    :goto_8
    return v1

    .line 31055
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 31057
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31009
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 2

    .prologue
    .line 31165
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31009
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 2

    .prologue
    .line 31169
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

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
    .line 31094
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

    .line 31063
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->getSerializedSize()I

    .line 31064
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 31065
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31067
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 31068
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 31070
    :cond_1f
    return-void
.end method
