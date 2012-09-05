.class public final Lcom/google/wireless/tacotruck/proto/Data$Comment;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Comment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

.field private static final serialVersionUID:J


# instance fields
.field private authorGaiaId_:J

.field private bitField0_:I

.field private contentHtml_:Ljava/lang/Object;

.field private creationTimestampMsec_:J

.field private focusObfuscatedAuthorId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private lastUpdateTimestampMsec_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private truncated_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5335
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 5336
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->initFields()V

    .line 5337
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4563
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4733
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedIsInitialized:B

    .line 4771
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedSerializedSize:I

    .line 4564
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4565
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4733
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedIsInitialized:B

    .line 4771
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedSerializedSize:I

    .line 4565
    return-void
.end method

.method static synthetic access$5802(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$6002(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$6302(Lcom/google/wireless/tacotruck/proto/Data$Comment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    return p1
.end method

.method static synthetic access$6402(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$6502(Lcom/google/wireless/tacotruck/proto/Data$Comment;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/google/wireless/tacotruck/proto/Data$Comment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4558
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    return p1
.end method

.method private getContentHtmlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4672
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    .line 4673
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4674
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4676
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    .line 4679
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 1

    .prologue
    .line 4569
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method private getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4640
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 4641
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4642
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4644
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 4647
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

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4598
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    .line 4599
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4600
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4602
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    .line 4605
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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 4724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    .line 4725
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    .line 4726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 4727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    .line 4728
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    .line 4729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    .line 4730
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    .line 4731
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 4732
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 1

    .prologue
    .line 4887
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->access$5600()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4890
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthorGaiaId()J
    .registers 3

    .prologue
    .line 4616
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    return-wide v0
.end method

.method public getContentHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4658
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    .line 4659
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4660
    check-cast v1, Ljava/lang/String;

    .line 4668
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4662
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4664
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4665
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4666
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4668
    goto :goto_8
.end method

.method public getCreationTimestampMsec()J
    .registers 3

    .prologue
    .line 4690
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4558
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 2

    .prologue
    .line 4573
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getFocusObfuscatedAuthorId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4626
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 4627
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4628
    check-cast v1, Ljava/lang/String;

    .line 4636
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4630
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4632
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4633
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4634
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4636
    goto :goto_8
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4584
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    .line 4585
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4586
    check-cast v1, Ljava/lang/String;

    .line 4594
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4588
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4590
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4591
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4592
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4594
    goto :goto_8
.end method

.method public getLastUpdateTimestampMsec()J
    .registers 3

    .prologue
    .line 4710
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    return-wide v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 4720
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4773
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedSerializedSize:I

    .line 4774
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 4810
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 4776
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 4777
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 4778
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4781
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 4782
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4785
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_39

    .line 4786
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4789
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_48

    .line 4790
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4793
    :cond_48
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_58

    .line 4794
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4797
    :cond_58
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_68

    .line 4798
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4801
    :cond_68
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_78

    .line 4802
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4805
    :cond_78
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_87

    .line 4806
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4809
    :cond_87
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedSerializedSize:I

    move v1, v0

    .line 4810
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_b
.end method

.method public getTruncated()Z
    .registers 2

    .prologue
    .line 4700
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    return v0
.end method

.method public hasAuthorGaiaId()Z
    .registers 3

    .prologue
    .line 4613
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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

.method public hasContentHtml()Z
    .registers 3

    .prologue
    .line 4655
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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

.method public hasCreationTimestampMsec()Z
    .registers 3

    .prologue
    .line 4687
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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

.method public hasFocusObfuscatedAuthorId()Z
    .registers 3

    .prologue
    .line 4623
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4581
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLastUpdateTimestampMsec()Z
    .registers 3

    .prologue
    .line 4707
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    .line 4717
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTruncated()Z
    .registers 3

    .prologue
    .line 4697
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4735
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedIsInitialized:B

    .line 4736
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4739
    :goto_8
    return v1

    .line 4736
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4738
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->memoizedIsInitialized:B

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
    .line 4817
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4744
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getSerializedSize()I

    .line 4745
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 4746
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4748
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 4749
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4751
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_2e

    .line 4752
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4754
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3b

    .line 4755
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4757
    :cond_3b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_49

    .line 4758
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4760
    :cond_49
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_57

    .line 4761
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4763
    :cond_57
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_65

    .line 4764
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4766
    :cond_65
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_72

    .line 4767
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4769
    :cond_72
    return-void
.end method
