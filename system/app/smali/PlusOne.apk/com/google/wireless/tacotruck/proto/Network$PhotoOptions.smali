.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private maxCommentCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private returnComments_:Z

.field private returnImageUrls_:Z

.field private returnPlusOnes_:Z

.field private returnShapes_:Z

.field private returnVideoUrls_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46618
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 46619
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->initFields()V

    .line 46620
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 46089
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 46171
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedIsInitialized:B

    .line 46203
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedSerializedSize:I

    .line 46090
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46084
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 46091
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 46171
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedIsInitialized:B

    .line 46203
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedSerializedSize:I

    .line 46091
    return-void
.end method

.method static synthetic access$64802(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46084
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    return p1
.end method

.method static synthetic access$64902(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46084
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    return p1
.end method

.method static synthetic access$65002(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46084
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$65102(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46084
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    return p1
.end method

.method static synthetic access$65202(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46084
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    return p1
.end method

.method static synthetic access$65302(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46084
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    return p1
.end method

.method static synthetic access$65402(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46084
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 1

    .prologue
    .line 46095
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 46164
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    .line 46165
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    .line 46166
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    .line 46167
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    .line 46168
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    .line 46169
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    .line 46170
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 1

    .prologue
    .line 46311
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->access$64600()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 46314
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46084
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 46099
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getMaxCommentCount()I
    .registers 2

    .prologue
    .line 46160
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    return v0
.end method

.method public getReturnComments()Z
    .registers 2

    .prologue
    .line 46120
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    return v0
.end method

.method public getReturnImageUrls()Z
    .registers 2

    .prologue
    .line 46110
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    return v0
.end method

.method public getReturnPlusOnes()Z
    .registers 2

    .prologue
    .line 46150
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2

    .prologue
    .line 46130
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    return v0
.end method

.method public getReturnVideoUrls()Z
    .registers 2

    .prologue
    .line 46140
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 46205
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedSerializedSize:I

    .line 46206
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 46234
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 46208
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 46209
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 46210
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 46213
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 46214
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 46217
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 46218
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 46221
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 46222
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 46225
    :cond_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 46226
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 46229
    :cond_52
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_62

    .line 46230
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 46233
    :cond_62
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedSerializedSize:I

    move v1, v0

    .line 46234
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasMaxCommentCount()Z
    .registers 3

    .prologue
    .line 46157
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReturnComments()Z
    .registers 3

    .prologue
    .line 46117
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

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

.method public hasReturnImageUrls()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 46107
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReturnPlusOnes()Z
    .registers 3

    .prologue
    .line 46147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3

    .prologue
    .line 46127
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

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

.method public hasReturnVideoUrls()Z
    .registers 3

    .prologue
    .line 46137
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

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

    .line 46173
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedIsInitialized:B

    .line 46174
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 46177
    :goto_8
    return v1

    .line 46174
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 46176
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedIsInitialized:B

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
    .line 46241
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

    .line 46182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getSerializedSize()I

    .line 46183
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 46184
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 46186
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 46187
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 46189
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 46190
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 46192
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 46193
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 46195
    :cond_35
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 46196
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 46198
    :cond_43
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_51

    .line 46199
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 46201
    :cond_51
    return-void
.end method
