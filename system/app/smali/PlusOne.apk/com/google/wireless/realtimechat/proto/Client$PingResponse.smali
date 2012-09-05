.class public final Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PingResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

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
    .line 30588
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 30589
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->initFields()V

    .line 30590
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30264
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30302
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->memoizedIsInitialized:B

    .line 30322
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->memoizedSerializedSize:I

    .line 30265
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30259
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30266
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30302
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->memoizedIsInitialized:B

    .line 30322
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->memoizedSerializedSize:I

    .line 30266
    return-void
.end method

.method static synthetic access$41802(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30259
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$41902(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30259
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$42002(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30259
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 1

    .prologue
    .line 30270
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 30299
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 30300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->timestamp_:J

    .line 30301
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 1

    .prologue
    .line 30414
    #calls: Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->access$41600()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30417
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30259
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2

    .prologue
    .line 30274
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30324
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->memoizedSerializedSize:I

    .line 30325
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 30337
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 30327
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 30328
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 30329
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 30332
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 30333
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 30336
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 30337
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 30285
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 30295
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30282
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->bitField0_:I

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
    .line 30292
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->bitField0_:I

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

    .line 30304
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->memoizedIsInitialized:B

    .line 30305
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 30308
    :goto_8
    return v1

    .line 30305
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 30307
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->memoizedIsInitialized:B

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
    .line 30344
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

    .line 30313
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getSerializedSize()I

    .line 30314
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 30315
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 30317
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 30318
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 30320
    :cond_1f
    return-void
.end method
