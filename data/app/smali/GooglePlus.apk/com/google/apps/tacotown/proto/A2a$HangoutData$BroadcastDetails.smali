.class public final Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "A2a.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/A2a$HangoutData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BroadcastDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private broadcastTitle_:Ljava/lang/Object;

.field private broadcastUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private youtubeLiveId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1036
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    .line 1037
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->initFields()V

    .line 1038
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 555
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 670
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->memoizedIsInitialized:B

    .line 693
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->memoizedSerializedSize:I

    .line 556
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;Lcom/google/apps/tacotown/proto/A2a$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;-><init>(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 557
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 670
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->memoizedIsInitialized:B

    .line 693
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->memoizedSerializedSize:I

    .line 557
    return-void
.end method

.method static synthetic access$1002(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    iput p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->youtubeLiveId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method private getBroadcastTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 622
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastTitle_:Ljava/lang/Object;

    .line 623
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 624
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 626
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastTitle_:Ljava/lang/Object;

    .line 629
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

.method private getBroadcastUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 654
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastUrl_:Ljava/lang/Object;

    .line 655
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 656
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 658
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastUrl_:Ljava/lang/Object;

    .line 661
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

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;
    .registers 1

    .prologue
    .line 561
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    return-object v0
.end method

.method private getYoutubeLiveIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 590
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->youtubeLiveId_:Ljava/lang/Object;

    .line 591
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 592
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 594
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->youtubeLiveId_:Ljava/lang/Object;

    .line 597
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
    .line 666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->youtubeLiveId_:Ljava/lang/Object;

    .line 667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastTitle_:Ljava/lang/Object;

    .line 668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastUrl_:Ljava/lang/Object;

    .line 669
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 1

    .prologue
    .line 789
    #calls: Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->access$600()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 792
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBroadcastTitle()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 608
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastTitle_:Ljava/lang/Object;

    .line 609
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 610
    check-cast v1, Ljava/lang/String;

    .line 618
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 612
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 614
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 616
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastTitle_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 618
    goto :goto_8
.end method

.method public getBroadcastUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 640
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastUrl_:Ljava/lang/Object;

    .line 641
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 642
    check-cast v1, Ljava/lang/String;

    .line 650
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 644
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 646
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 648
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 650
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;
    .registers 2

    .prologue
    .line 565
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 695
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->memoizedSerializedSize:I

    .line 696
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 712
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 698
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 699
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 700
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getYoutubeLiveIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 703
    :cond_19
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 704
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getBroadcastTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 707
    :cond_28
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 708
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getBroadcastUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 711
    :cond_39
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->memoizedSerializedSize:I

    move v1, v0

    .line 712
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getYoutubeLiveId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 576
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->youtubeLiveId_:Ljava/lang/Object;

    .line 577
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 578
    check-cast v1, Ljava/lang/String;

    .line 586
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 580
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 582
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 584
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->youtubeLiveId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 586
    goto :goto_8
.end method

.method public hasBroadcastTitle()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

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

.method public hasBroadcastUrl()Z
    .registers 3

    .prologue
    .line 637
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

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

.method public hasYoutubeLiveId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 573
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

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

    .line 672
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->memoizedIsInitialized:B

    .line 673
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 676
    :goto_8
    return v1

    .line 673
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 675
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 2

    .prologue
    .line 790
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->newBuilderForType()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 2

    .prologue
    .line 794
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->newBuilder(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->toBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

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
    .line 719
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

    .line 681
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getSerializedSize()I

    .line 682
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 683
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getYoutubeLiveIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 685
    :cond_12
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 686
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getBroadcastTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 688
    :cond_1f
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 689
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getBroadcastUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 691
    :cond_2e
    return-void
.end method
