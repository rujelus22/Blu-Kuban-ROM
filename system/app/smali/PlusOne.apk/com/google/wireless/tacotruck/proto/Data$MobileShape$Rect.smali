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
    .line 18703
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 18704
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->initFields()V

    .line 18705
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18248
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18308
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    .line 18350
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedSerializedSize:I

    .line 18249
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18243
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18308
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    .line 18350
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedSerializedSize:I

    .line 18250
    return-void
.end method

.method static synthetic access$24502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18243
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    return-wide p1
.end method

.method static synthetic access$24602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18243
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    return-wide p1
.end method

.method static synthetic access$24702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18243
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    return-wide p1
.end method

.method static synthetic access$24802(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18243
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    return-wide p1
.end method

.method static synthetic access$24902(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18243
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 1

    .prologue
    .line 18254
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 18303
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    .line 18304
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    .line 18305
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    .line 18306
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    .line 18307
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 1

    .prologue
    .line 18450
    #calls: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->access$24300()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 18453
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
    .line 18397
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->access$24200(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBottom()D
    .registers 3

    .prologue
    .line 18299
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18243
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 18258
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public getLeft()D
    .registers 3

    .prologue
    .line 18269
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    return-wide v0
.end method

.method public getRight()D
    .registers 3

    .prologue
    .line 18289
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 18352
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedSerializedSize:I

    .line 18353
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 18373
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 18355
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 18356
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 18357
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 18360
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 18361
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 18364
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_33

    .line 18365
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 18368
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 18369
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 18372
    :cond_42
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedSerializedSize:I

    move v1, v0

    .line 18373
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTop()D
    .registers 3

    .prologue
    .line 18279
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    return-wide v0
.end method

.method public hasBottom()Z
    .registers 3

    .prologue
    .line 18296
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

    .line 18266
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
    .line 18286
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
    .line 18276
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

    .line 18310
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    .line 18311
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 18330
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 18311
    goto :goto_9

    .line 18313
    :cond_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasLeft()Z

    move-result v3

    if-nez v3, :cond_16

    .line 18314
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    goto :goto_a

    .line 18317
    :cond_16
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasTop()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 18318
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    goto :goto_a

    .line 18321
    :cond_1f
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasRight()Z

    move-result v3

    if-nez v3, :cond_28

    .line 18322
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    goto :goto_a

    .line 18325
    :cond_28
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasBottom()Z

    move-result v3

    if-nez v3, :cond_31

    .line 18326
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    goto :goto_a

    .line 18329
    :cond_31
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->memoizedIsInitialized:B

    move v2, v1

    .line 18330
    goto :goto_a
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 18380
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

    .line 18335
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getSerializedSize()I

    .line 18336
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 18337
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18339
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 18340
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18342
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_28

    .line 18343
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18345
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 18346
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18348
    :cond_35
    return-void
.end method
