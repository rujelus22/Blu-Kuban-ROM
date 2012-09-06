.class public final Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChatMessageResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messageClientId_:Ljava/lang/Object;

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1334
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 1335
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->initFields()V

    .line 1336
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 740
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 877
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->memoizedIsInitialized:B

    .line 906
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->memoizedSerializedSize:I

    .line 741
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 742
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 877
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->memoizedIsInitialized:B

    .line 906
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->memoizedSerializedSize:I

    .line 742
    return-void
.end method

.method static synthetic access$1202(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->messageClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 859
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->conversationId_:Ljava/lang/Object;

    .line 860
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 861
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 863
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->conversationId_:Ljava/lang/Object;

    .line 866
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 1

    .prologue
    .line 746
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object v0
.end method

.method private getMessageClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 817
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->messageClientId_:Ljava/lang/Object;

    .line 818
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 819
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 821
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->messageClientId_:Ljava/lang/Object;

    .line 824
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

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 785
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->requestError_:Ljava/lang/Object;

    .line 786
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 787
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 789
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->requestError_:Ljava/lang/Object;

    .line 792
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
    .registers 3

    .prologue
    .line 871
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 872
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->requestError_:Ljava/lang/Object;

    .line 873
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->messageClientId_:Ljava/lang/Object;

    .line 874
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->timestamp_:J

    .line 875
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->conversationId_:Ljava/lang/Object;

    .line 876
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 1

    .prologue
    .line 1010
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->access$1000()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1013
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 845
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->conversationId_:Ljava/lang/Object;

    .line 846
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 847
    check-cast v1, Ljava/lang/String;

    .line 855
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 849
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 851
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 853
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 855
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2

    .prologue
    .line 750
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object v0
.end method

.method public getMessageClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 803
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->messageClientId_:Ljava/lang/Object;

    .line 804
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 805
    check-cast v1, Ljava/lang/String;

    .line 813
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 807
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 809
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 811
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->messageClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 813
    goto :goto_8
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 771
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->requestError_:Ljava/lang/Object;

    .line 772
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 773
    check-cast v1, Ljava/lang/String;

    .line 781
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 775
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 777
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 779
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 781
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 908
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->memoizedSerializedSize:I

    .line 909
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 933
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 911
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 912
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 913
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 916
    :cond_1c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 917
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 920
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 921
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getMessageClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 924
    :cond_3b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 925
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->timestamp_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 928
    :cond_4a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5c

    .line 929
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 932
    :cond_5c
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 933
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 835
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMessageClientId()Z
    .registers 3

    .prologue
    .line 800
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 768
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 758
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

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
    .line 832
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 879
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->memoizedIsInitialized:B

    .line 880
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 883
    :goto_8
    return v1

    .line 880
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 882
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 2

    .prologue
    .line 1011
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 2

    .prologue
    .line 1015
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

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
    .line 940
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 888
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getSerializedSize()I

    .line 889
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 890
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 892
    :cond_15
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 893
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 895
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 896
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getMessageClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 898
    :cond_30
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 899
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->timestamp_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 901
    :cond_3d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 902
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 904
    :cond_4d
    return-void
.end method
