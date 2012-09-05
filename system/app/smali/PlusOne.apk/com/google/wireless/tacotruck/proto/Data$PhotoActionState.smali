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
    .line 12907
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 12908
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->initFields()V

    .line 12909
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12484
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12544
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedIsInitialized:B

    .line 12570
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedSerializedSize:I

    .line 12485
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12479
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12486
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12544
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedIsInitialized:B

    .line 12570
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedSerializedSize:I

    .line 12486
    return-void
.end method

.method static synthetic access$16902(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12479
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    return p1
.end method

.method static synthetic access$17002(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12479
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    return p1
.end method

.method static synthetic access$17102(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12479
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    return p1
.end method

.method static synthetic access$17202(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12479
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    return p1
.end method

.method static synthetic access$17302(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12479
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 1

    .prologue
    .line 12490
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 12539
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    .line 12540
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    .line 12541
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    .line 12542
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    .line 12543
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 1

    .prologue
    .line 12670
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->access$16700()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12673
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
    .line 12479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 12494
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12572
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedSerializedSize:I

    .line 12573
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 12593
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 12575
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 12576
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 12577
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12580
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 12581
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12584
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 12585
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12588
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 12589
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12592
    :cond_42
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedSerializedSize:I

    move v1, v0

    .line 12593
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getViewerCanApprove()Z
    .registers 2

    .prologue
    .line 12535
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    return v0
.end method

.method public getViewerCanComment()Z
    .registers 2

    .prologue
    .line 12505
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    return v0
.end method

.method public getViewerCanEdit()Z
    .registers 2

    .prologue
    .line 12525
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    return v0
.end method

.method public getViewerCanTag()Z
    .registers 2

    .prologue
    .line 12515
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    return v0
.end method

.method public hasViewerCanApprove()Z
    .registers 3

    .prologue
    .line 12532
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

    .line 12502
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
    .line 12522
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
    .line 12512
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

    .line 12546
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedIsInitialized:B

    .line 12547
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 12550
    :goto_8
    return v1

    .line 12547
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 12549
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->memoizedIsInitialized:B

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
    .line 12600
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

    .line 12555
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getSerializedSize()I

    .line 12556
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 12557
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanComment_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12559
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 12560
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanTag_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12562
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 12563
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanEdit_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12565
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 12566
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->viewerCanApprove_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12568
    :cond_35
    return-void
.end method
