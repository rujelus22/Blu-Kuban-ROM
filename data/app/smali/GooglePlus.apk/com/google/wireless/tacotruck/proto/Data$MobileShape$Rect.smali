.class public final Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MobileShape$RectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private bottom_:D

.field private left_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private right_:D

.field private top_:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20440
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 20441
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->initFields()V

    .line 20442
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19985
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20045
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    .line 20087
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedSerializedSize:I

    .line 19986
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19980
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19987
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20045
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    .line 20087
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedSerializedSize:I

    .line 19987
    return-void
.end method

.method static synthetic access$26602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19980
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    return-wide p1
.end method

.method static synthetic access$26702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19980
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    return-wide p1
.end method

.method static synthetic access$26802(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19980
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    return-wide p1
.end method

.method static synthetic access$26902(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19980
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    return-wide p1
.end method

.method static synthetic access$27002(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19980
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 1

    .prologue
    .line 19991
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 20040
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    .line 20041
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    .line 20042
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    .line 20043
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    .line 20044
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 1

    .prologue
    .line 20187
    #calls: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->access$26400()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20190
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20134
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->access$26300(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBottom()D
    .registers 3

    .prologue
    .line 20036
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19980
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 19995
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public getLeft()D
    .registers 3

    .prologue
    .line 20006
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    return-wide v0
.end method

.method public getRight()D
    .registers 3

    .prologue
    .line 20026
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 20089
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedSerializedSize:I

    .line 20090
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 20110
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 20092
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 20093
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 20094
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 20097
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 20098
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 20101
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_33

    .line 20102
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 20105
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 20106
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 20109
    :cond_42
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedSerializedSize:I

    move v1, v0

    .line 20110
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTop()D
    .registers 3

    .prologue
    .line 20016
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    return-wide v0
.end method

.method public hasBottom()Z
    .registers 3

    .prologue
    .line 20033
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

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

.method public hasLeft()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20003
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRight()Z
    .registers 3

    .prologue
    .line 20023
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

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

.method public hasTop()Z
    .registers 3

    .prologue
    .line 20013
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20047
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    .line 20048
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 20067
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 20048
    goto :goto_9

    .line 20050
    :cond_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasLeft()Z

    move-result v3

    if-nez v3, :cond_16

    .line 20051
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    goto :goto_a

    .line 20054
    :cond_16
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasTop()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 20055
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    goto :goto_a

    .line 20058
    :cond_1f
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasRight()Z

    move-result v3

    if-nez v3, :cond_28

    .line 20059
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    goto :goto_a

    .line 20062
    :cond_28
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasBottom()Z

    move-result v3

    if-nez v3, :cond_31

    .line 20063
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    goto :goto_a

    .line 20066
    :cond_31
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    move v2, v1

    .line 20067
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19980
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 2

    .prologue
    .line 20188
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19980
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 2

    .prologue
    .line 20192
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

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
    .line 20117
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 20072
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getSerializedSize()I

    .line 20073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 20074
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 20076
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 20077
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 20079
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_28

    .line 20080
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 20082
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 20083
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 20085
    :cond_35
    return-void
.end method
