.class public final Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiptInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private eventTimestamp_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9915
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    .line 9916
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->initFields()V

    .line 9917
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9591
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9629
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->memoizedIsInitialized:B

    .line 9649
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->memoizedSerializedSize:I

    .line 9592
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9586
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9593
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9629
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->memoizedIsInitialized:B

    .line 9649
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->memoizedSerializedSize:I

    .line 9593
    return-void
.end method

.method static synthetic access$13202(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9586
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9586
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->eventTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$13402(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9586
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    .registers 1

    .prologue
    .line 9597
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 9626
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 9627
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->eventTimestamp_:J

    .line 9628
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 1

    .prologue
    .line 9741
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->access$13000()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    .registers 2

    .prologue
    .line 9601
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    return-object v0
.end method

.method public getEventTimestamp()J
    .registers 3

    .prologue
    .line 9622
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->eventTimestamp_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9651
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->memoizedSerializedSize:I

    .line 9652
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 9664
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 9654
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 9655
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 9656
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9659
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 9660
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->eventTimestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9663
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 9664
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    .registers 2

    .prologue
    .line 9612
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    return-object v0
.end method

.method public hasEventTimestamp()Z
    .registers 3

    .prologue
    .line 9619
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9609
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->bitField0_:I

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

    .line 9631
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->memoizedIsInitialized:B

    .line 9632
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 9635
    :goto_8
    return v1

    .line 9632
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 9634
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->memoizedIsInitialized:B

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
    .line 9671
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

    .line 9640
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->getSerializedSize()I

    .line 9641
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 9642
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9644
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 9645
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->eventTimestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9647
    :cond_1f
    return-void
.end method
