.class public final Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Item$AnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Item$Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Item$Annotation;",
        "Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$Item$AnnotationOrBuilder;"
    }
.end annotation


# instance fields
.field private authorName_:Ljava/lang/Object;

.field private bitField0_:I

.field private body_:Ljava/lang/Object;

.field private profileId_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4475
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4629
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->body_:Ljava/lang/Object;

    .line 4665
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->authorName_:Ljava/lang/Object;

    .line 4701
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->userId_:Ljava/lang/Object;

    .line 4737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->profileId_:Ljava/lang/Object;

    .line 4476
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->maybeForceBuilderInitialization()V

    .line 4477
    return-void
.end method

.method static synthetic access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4470
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 1

    .prologue
    .line 4470
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4516
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    .line 4517
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4518
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4521
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 1

    .prologue
    .line 4482
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4480
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 3

    .prologue
    .line 4507
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    .line 4508
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4509
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4511
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 6

    .prologue
    .line 4525
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;-><init>(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 4526
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4527
    const/4 v2, 0x0

    .line 4528
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4529
    or-int/lit8 v2, v2, 0x1

    .line 4531
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->body_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Annotation;->body_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->access$5502(Lcom/google/feedreader/extrpc/Client$Item$Annotation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4532
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4533
    or-int/lit8 v2, v2, 0x2

    .line 4535
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->authorName_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Annotation;->authorName_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->access$5602(Lcom/google/feedreader/extrpc/Client$Item$Annotation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4536
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 4537
    or-int/lit8 v2, v2, 0x4

    .line 4539
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->userId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Annotation;->userId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->access$5702(Lcom/google/feedreader/extrpc/Client$Item$Annotation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4540
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3e

    .line 4541
    or-int/lit8 v1, v2, 0x8

    .line 4543
    :goto_35
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->profileId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Annotation;->profileId_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->access$5802(Lcom/google/feedreader/extrpc/Client$Item$Annotation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4544
    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->access$5902(Lcom/google/feedreader/extrpc/Client$Item$Annotation;I)I

    .line 4545
    return-object v0

    :cond_3e
    move v1, v2

    goto :goto_35
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 2

    .prologue
    .line 4486
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4487
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->body_:Ljava/lang/Object;

    .line 4488
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4489
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->authorName_:Ljava/lang/Object;

    .line 4490
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->userId_:Ljava/lang/Object;

    .line 4492
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->profileId_:Ljava/lang/Object;

    .line 4494
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4495
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthorName()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 2

    .prologue
    .line 4689
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4690
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->authorName_:Ljava/lang/Object;

    .line 4692
    return-object p0
.end method

.method public clearBody()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 2

    .prologue
    .line 4653
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4654
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->body_:Ljava/lang/Object;

    .line 4656
    return-object p0
.end method

.method public clearProfileId()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 2

    .prologue
    .line 4761
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4762
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getProfileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->profileId_:Ljava/lang/Object;

    .line 4764
    return-object p0
.end method

.method public clearUserId()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 2

    .prologue
    .line 4725
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4726
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->userId_:Ljava/lang/Object;

    .line 4728
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 3

    .prologue
    .line 4499
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4670
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->authorName_:Ljava/lang/Object;

    .line 4671
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 4672
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4673
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->authorName_:Ljava/lang/Object;

    move-object v2, v1

    .line 4676
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getBody()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4634
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->body_:Ljava/lang/Object;

    .line 4635
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 4636
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4637
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->body_:Ljava/lang/Object;

    move-object v2, v1

    .line 4640
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 2

    .prologue
    .line 4503
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4742
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->profileId_:Ljava/lang/Object;

    .line 4743
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 4744
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4745
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->profileId_:Ljava/lang/Object;

    move-object v2, v1

    .line 4748
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getUserId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4706
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->userId_:Ljava/lang/Object;

    .line 4707
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 4708
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4709
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->userId_:Ljava/lang/Object;

    move-object v2, v1

    .line 4712
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasAuthorName()Z
    .registers 3

    .prologue
    .line 4667
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

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

.method public hasBody()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 4631
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasProfileId()Z
    .registers 3

    .prologue
    .line 4739
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    .line 4703
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4566
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->hasBody()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 4582
    :goto_8
    return v0

    .line 4570
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->hasAuthorName()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 4572
    goto :goto_8

    .line 4574
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->hasUserId()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    .line 4576
    goto :goto_8

    .line 4578
    :cond_19
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->hasProfileId()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    .line 4580
    goto :goto_8

    .line 4582
    :cond_21
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4549
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 4562
    :goto_7
    return-object v0

    .line 4550
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4551
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->setBody(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    .line 4553
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->hasAuthorName()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4554
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->setAuthorName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    .line 4556
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4557
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->setUserId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    .line 4559
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->hasProfileId()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4560
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->setProfileId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    :cond_3c
    move-object v0, p0

    .line 4562
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4590
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4591
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 4596
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4598
    :sswitch_d
    return-object p0

    .line 4603
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4604
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->body_:Ljava/lang/Object;

    goto :goto_0

    .line 4608
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4609
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->authorName_:Ljava/lang/Object;

    goto :goto_0

    .line 4613
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->userId_:Ljava/lang/Object;

    goto :goto_0

    .line 4618
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4619
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->profileId_:Ljava/lang/Object;

    goto :goto_0

    .line 4591
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4470
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4470
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4470
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthorName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4680
    if-nez p1, :cond_8

    .line 4681
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4683
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4684
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->authorName_:Ljava/lang/Object;

    .line 4686
    return-object p0
.end method

.method setAuthorName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4695
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4696
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->authorName_:Ljava/lang/Object;

    .line 4698
    return-void
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4644
    if-nez p1, :cond_8

    .line 4645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4647
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4648
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->body_:Ljava/lang/Object;

    .line 4650
    return-object p0
.end method

.method setBody(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4659
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4660
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->body_:Ljava/lang/Object;

    .line 4662
    return-void
.end method

.method public setProfileId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4752
    if-nez p1, :cond_8

    .line 4753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4755
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4756
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->profileId_:Ljava/lang/Object;

    .line 4758
    return-object p0
.end method

.method setProfileId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4767
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4768
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->profileId_:Ljava/lang/Object;

    .line 4770
    return-void
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4716
    if-nez p1, :cond_8

    .line 4717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4719
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4720
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->userId_:Ljava/lang/Object;

    .line 4722
    return-object p0
.end method

.method setUserId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4731
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->bitField0_:I

    .line 4732
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->userId_:Ljava/lang/Object;

    .line 4734
    return-void
.end method
