.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoActionStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoActionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private viewerCanApprove_:Z

.field private viewerCanComment_:Z

.field private viewerCanEdit_:Z

.field private viewerCanTag_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13550
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 13551
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->initFields()V

    .line 13552
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13127
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13187
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedIsInitialized:B

    .line 13213
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedSerializedSize:I

    .line 13128
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13122
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13129
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13187
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedIsInitialized:B

    .line 13213
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedSerializedSize:I

    .line 13129
    return-void
.end method

.method static synthetic access$17702(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13122
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    return p1
.end method

.method static synthetic access$17802(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13122
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    return p1
.end method

.method static synthetic access$17902(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13122
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    return p1
.end method

.method static synthetic access$18002(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13122
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    return p1
.end method

.method static synthetic access$18102(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13122
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 1

    .prologue
    .line 13133
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 13182
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    .line 13183
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    .line 13184
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    .line 13185
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    .line 13186
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 1

    .prologue
    .line 13313
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->access$17500()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13316
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13122
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 13137
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13215
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedSerializedSize:I

    .line 13216
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 13236
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 13218
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 13219
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 13220
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13223
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 13224
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13227
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 13228
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13231
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 13232
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13235
    :cond_42
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedSerializedSize:I

    move v1, v0

    .line 13236
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getViewerCanApprove()Z
    .registers 2

    .prologue
    .line 13178
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    return v0
.end method

.method public getViewerCanComment()Z
    .registers 2

    .prologue
    .line 13148
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    return v0
.end method

.method public getViewerCanEdit()Z
    .registers 2

    .prologue
    .line 13168
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    return v0
.end method

.method public getViewerCanTag()Z
    .registers 2

    .prologue
    .line 13158
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    return v0
.end method

.method public hasViewerCanApprove()Z
    .registers 3

    .prologue
    .line 13175
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

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

.method public hasViewerCanComment()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13145
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasViewerCanEdit()Z
    .registers 3

    .prologue
    .line 13165
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

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

.method public hasViewerCanTag()Z
    .registers 3

    .prologue
    .line 13155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

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

    .line 13189
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedIsInitialized:B

    .line 13190
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13193
    :goto_8
    return v1

    .line 13190
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13192
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13122
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 2

    .prologue
    .line 13314
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13122
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 2

    .prologue
    .line 13318
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

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
    .line 13243
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

    .line 13198
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getSerializedSize()I

    .line 13199
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 13200
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13202
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 13203
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13205
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 13206
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13208
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 13209
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13211
    :cond_35
    return-void
.end method
