.class public final Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalyticsLogRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37700
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    .line 37701
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->initFields()V

    .line 37702
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 37410
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 37437
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedIsInitialized:B

    .line 37454
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedSerializedSize:I

    .line 37411
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37405
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37412
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 37437
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedIsInitialized:B

    .line 37454
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedSerializedSize:I

    .line 37412
    return-void
.end method

.method static synthetic access$52202(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37405
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    return-object p1
.end method

.method static synthetic access$52302(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37405
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
    .registers 1

    .prologue
    .line 37416
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 37435
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 37436
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 1

    .prologue
    .line 37542
    #calls: Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->access$52000()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 37545
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
    .registers 2

    .prologue
    .line 37420
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    return-object v0
.end method

.method public getLogEnvelope()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 2

    .prologue
    .line 37431
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 37456
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedSerializedSize:I

    .line 37457
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 37465
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 37459
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 37460
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 37461
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 37464
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 37465
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasLogEnvelope()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37428
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->bitField0_:I

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

    .line 37439
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedIsInitialized:B

    .line 37440
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 37443
    :goto_8
    return v1

    .line 37440
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 37442
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 2

    .prologue
    .line 37543
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 2

    .prologue
    .line 37547
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

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
    .line 37472
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 37448
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->getSerializedSize()I

    .line 37449
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 37450
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 37452
    :cond_f
    return-void
.end method
