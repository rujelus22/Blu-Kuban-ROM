.class public final Lcom/google/wireless/realtimechat/proto/Client$Error;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Error;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private detail_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30991
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Error;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Error;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 30992
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Error;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->initFields()V

    .line 30993
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30611
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30671
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->memoizedIsInitialized:B

    .line 30691
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->memoizedSerializedSize:I

    .line 30612
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30606
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Error;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30613
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30671
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->memoizedIsInitialized:B

    .line 30691
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->memoizedSerializedSize:I

    .line 30613
    return-void
.end method

.method static synthetic access$42402(Lcom/google/wireless/realtimechat/proto/Client$Error;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30606
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    return-object p1
.end method

.method static synthetic access$42502(Lcom/google/wireless/realtimechat/proto/Client$Error;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30606
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->detail_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42602(Lcom/google/wireless/realtimechat/proto/Client$Error;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30606
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 1

    .prologue
    .line 30617
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Error;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object v0
.end method

.method private getDetailBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30656
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->detail_:Ljava/lang/Object;

    .line 30657
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30658
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30660
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->detail_:Ljava/lang/Object;

    .line 30663
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 30668
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 30669
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->detail_:Ljava/lang/Object;

    .line 30670
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 1

    .prologue
    .line 30783
    #calls: Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->access$42200()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30786
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30606
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2

    .prologue
    .line 30621
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Error;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .registers 5

    .prologue
    .line 30642
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->detail_:Ljava/lang/Object;

    .line 30643
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 30644
    check-cast v1, Ljava/lang/String;

    .line 30652
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 30646
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30648
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30649
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 30650
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->detail_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 30652
    goto :goto_8
.end method

.method public getOriginalCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 2

    .prologue
    .line 30632
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30693
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->memoizedSerializedSize:I

    .line 30694
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 30706
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 30696
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 30697
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 30698
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30701
    :cond_17
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 30702
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDetailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30705
    :cond_26
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->memoizedSerializedSize:I

    move v1, v0

    .line 30706
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasDetail()Z
    .registers 3

    .prologue
    .line 30639
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->bitField0_:I

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

.method public hasOriginalCommand()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30629
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->bitField0_:I

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

    .line 30673
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->memoizedIsInitialized:B

    .line 30674
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 30677
    :goto_8
    return v1

    .line 30674
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 30676
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30606
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 2

    .prologue
    .line 30784
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30606
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 2

    .prologue
    .line 30788
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

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
    .line 30713
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

    .line 30682
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getSerializedSize()I

    .line 30683
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 30684
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30686
    :cond_10
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 30687
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDetailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30689
    :cond_1d
    return-void
.end method
