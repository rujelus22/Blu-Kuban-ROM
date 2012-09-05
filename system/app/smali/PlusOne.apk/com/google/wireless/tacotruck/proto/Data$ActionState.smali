.class public final Lcom/google/wireless/tacotruck/proto/Data$ActionState;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ActionStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private viewerCanComment_:Z

.field private viewerCanPlusone_:Z

.field private viewerCanReshare_:Z

.field private viewerHasMuted_:Z

.field private viewerHasRead_:Z

.field private viewerIsFollowing_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12453
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 12454
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->initFields()V

    .line 12455
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11924
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12006
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->memoizedIsInitialized:B

    .line 12038
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->memoizedSerializedSize:I

    .line 11925
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11919
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11926
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12006
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->memoizedIsInitialized:B

    .line 12038
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->memoizedSerializedSize:I

    .line 11926
    return-void
.end method

.method static synthetic access$15902(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11919
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanComment_:Z

    return p1
.end method

.method static synthetic access$16002(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11919
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerIsFollowing_:Z

    return p1
.end method

.method static synthetic access$16102(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11919
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasMuted_:Z

    return p1
.end method

.method static synthetic access$16202(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11919
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanReshare_:Z

    return p1
.end method

.method static synthetic access$16302(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11919
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasRead_:Z

    return p1
.end method

.method static synthetic access$16402(Lcom/google/wireless/tacotruck/proto/Data$ActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11919
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanPlusone_:Z

    return p1
.end method

.method static synthetic access$16502(Lcom/google/wireless/tacotruck/proto/Data$ActionState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11919
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 1

    .prologue
    .line 11930
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 11999
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanComment_:Z

    .line 12000
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerIsFollowing_:Z

    .line 12001
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasMuted_:Z

    .line 12002
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanReshare_:Z

    .line 12003
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasRead_:Z

    .line 12004
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanPlusone_:Z

    .line 12005
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 1

    .prologue
    .line 12146
    #calls: Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->access$15700()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12149
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 11934
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12040
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->memoizedSerializedSize:I

    .line 12041
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 12069
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 12043
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 12044
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 12045
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanComment_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12048
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 12049
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerIsFollowing_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12052
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 12053
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasMuted_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12056
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 12057
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanReshare_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12060
    :cond_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 12061
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasRead_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12064
    :cond_52
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_62

    .line 12065
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanPlusone_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12068
    :cond_62
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->memoizedSerializedSize:I

    move v1, v0

    .line 12069
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getViewerCanComment()Z
    .registers 2

    .prologue
    .line 11945
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanComment_:Z

    return v0
.end method

.method public getViewerCanPlusone()Z
    .registers 2

    .prologue
    .line 11995
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanPlusone_:Z

    return v0
.end method

.method public getViewerCanReshare()Z
    .registers 2

    .prologue
    .line 11975
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanReshare_:Z

    return v0
.end method

.method public getViewerHasMuted()Z
    .registers 2

    .prologue
    .line 11965
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasMuted_:Z

    return v0
.end method

.method public getViewerHasRead()Z
    .registers 2

    .prologue
    .line 11985
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasRead_:Z

    return v0
.end method

.method public getViewerIsFollowing()Z
    .registers 2

    .prologue
    .line 11955
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerIsFollowing_:Z

    return v0
.end method

.method public hasViewerCanComment()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11942
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasViewerCanPlusone()Z
    .registers 3

    .prologue
    .line 11992
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

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

.method public hasViewerCanReshare()Z
    .registers 3

    .prologue
    .line 11972
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

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

.method public hasViewerHasMuted()Z
    .registers 3

    .prologue
    .line 11962
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

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

.method public hasViewerHasRead()Z
    .registers 3

    .prologue
    .line 11982
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

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

.method public hasViewerIsFollowing()Z
    .registers 3

    .prologue
    .line 11952
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

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

    .line 12008
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->memoizedIsInitialized:B

    .line 12009
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 12012
    :goto_8
    return v1

    .line 12009
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 12011
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->memoizedIsInitialized:B

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
    .line 12076
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

    .line 12017
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getSerializedSize()I

    .line 12018
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 12019
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanComment_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12021
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 12022
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerIsFollowing_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12024
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 12025
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasMuted_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12027
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 12028
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanReshare_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12030
    :cond_35
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 12031
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerHasRead_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12033
    :cond_43
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_51

    .line 12034
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->viewerCanPlusone_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12036
    :cond_51
    return-void
.end method
