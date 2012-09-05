.class public final Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TypingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypingResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8951
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 8952
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->initFields()V

    .line 8953
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8680
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8707
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->memoizedIsInitialized:B

    .line 8724
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->memoizedSerializedSize:I

    .line 8681
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8675
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8682
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8707
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->memoizedIsInitialized:B

    .line 8724
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->memoizedSerializedSize:I

    .line 8682
    return-void
.end method

.method static synthetic access$11902(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8675
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8675
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 1

    .prologue
    .line 8686
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 8705
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 8706
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 1

    .prologue
    .line 8812
    #calls: Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->access$11700()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8815
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8675
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2

    .prologue
    .line 8690
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 8726
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->memoizedSerializedSize:I

    .line 8727
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 8735
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 8729
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 8730
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 8731
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8734
    :cond_1a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 8735
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 8701
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8698
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->bitField0_:I

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

    .line 8709
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->memoizedIsInitialized:B

    .line 8710
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8713
    :goto_8
    return v1

    .line 8710
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8712
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->memoizedIsInitialized:B

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
    .line 8742
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

    .line 8718
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getSerializedSize()I

    .line 8719
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 8720
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8722
    :cond_13
    return-void
.end method
