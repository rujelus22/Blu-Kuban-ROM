.class public final Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private conversationName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4291
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    .line 4292
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->initFields()V

    .line 4293
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3900
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3982
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->memoizedIsInitialized:B

    .line 4002
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->memoizedSerializedSize:I

    .line 3901
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3895
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;-><init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3902
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3982
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->memoizedIsInitialized:B

    .line 4002
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->memoizedSerializedSize:I

    .line 3902
    return-void
.end method

.method static synthetic access$5602(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3895
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3895
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3895
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3967
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationId_:Ljava/lang/Object;

    .line 3968
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3969
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3971
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationId_:Ljava/lang/Object;

    .line 3974
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

.method private getConversationNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3935
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationName_:Ljava/lang/Object;

    .line 3936
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3937
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3939
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationName_:Ljava/lang/Object;

    .line 3942
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
    .registers 1

    .prologue
    .line 3906
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 3979
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationName_:Ljava/lang/Object;

    .line 3980
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationId_:Ljava/lang/Object;

    .line 3981
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 1

    .prologue
    .line 4094
    #calls: Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->access$5400()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3953
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationId_:Ljava/lang/Object;

    .line 3954
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3955
    check-cast v1, Ljava/lang/String;

    .line 3963
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3957
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3959
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3960
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3961
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3963
    goto :goto_8
.end method

.method public getConversationName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3921
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationName_:Ljava/lang/Object;

    .line 3922
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3923
    check-cast v1, Ljava/lang/String;

    .line 3931
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3925
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3927
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3928
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3929
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3931
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3895
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
    .registers 2

    .prologue
    .line 3910
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4004
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->memoizedSerializedSize:I

    .line 4005
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 4017
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 4007
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 4008
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 4009
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getConversationNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4012
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 4013
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4016
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->memoizedSerializedSize:I

    move v1, v0

    .line 4017
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 3950
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->bitField0_:I

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

.method public hasConversationName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3918
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->bitField0_:I

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

    .line 3984
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->memoizedIsInitialized:B

    .line 3985
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3988
    :goto_8
    return v1

    .line 3985
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3987
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->memoizedIsInitialized:B

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
    .line 4024
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

    .line 3993
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getSerializedSize()I

    .line 3994
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 3995
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getConversationNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3997
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 3998
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4000
    :cond_1f
    return-void
.end method
