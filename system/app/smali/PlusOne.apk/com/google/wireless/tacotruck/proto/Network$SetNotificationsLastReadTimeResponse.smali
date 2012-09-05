.class public final Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetNotificationsLastReadTimeResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

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
    .line 33872
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    .line 33873
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->initFields()V

    .line 33874
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33608
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33635
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->memoizedIsInitialized:B

    .line 33652
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->memoizedSerializedSize:I

    .line 33609
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33603
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33610
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33635
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->memoizedIsInitialized:B

    .line 33652
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->memoizedSerializedSize:I

    .line 33610
    return-void
.end method

.method static synthetic access$47102(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33603
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->lastReadTime_:D

    return-wide p1
.end method

.method static synthetic access$47202(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33603
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    .registers 1

    .prologue
    .line 33614
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 33633
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->lastReadTime_:D

    .line 33634
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33603
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    .registers 2

    .prologue
    .line 33618
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    return-object v0
.end method

.method public getLastReadTime()D
    .registers 3

    .prologue
    .line 33629
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->lastReadTime_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 33654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->memoizedSerializedSize:I

    .line 33655
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 33663
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 33657
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 33658
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_16

    .line 33659
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->lastReadTime_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 33662
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 33663
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasLastReadTime()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33626
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 33670
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

    .line 33646
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->getSerializedSize()I

    .line 33647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_f

    .line 33648
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->lastReadTime_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 33650
    :cond_f
    return-void
.end method
