.class public final Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Feedback.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Feedback$FeedbackRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;",
        "Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Feedback$FeedbackRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private appPlatform_:Ljava/lang/Object;

.field private appVersion_:Ljava/lang/Object;

.field private bitField0_:I

.field private callQuality_:I

.field private comments_:Ljava/lang/Object;

.field private logs_:Ljava/lang/Object;

.field private sipStack_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 846
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    .line 474
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->maybeForceBuilderInitialization()V

    .line 475
    return-void
.end method

.method static synthetic access$100()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 1

    .prologue
    .line 468
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->create()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 1

    .prologue
    .line 480
    new-instance v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 478
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 3

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    .line 510
    .local v0, result:Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 511
    invoke-static {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 513
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->build()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 6

    .prologue
    .line 517
    new-instance v1, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Feedback$1;)V

    .line 518
    .local v1, result:Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 519
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 520
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 521
    or-int/lit8 v2, v2, 0x1

    .line 523
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$302(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 525
    or-int/lit8 v2, v2, 0x2

    .line 527
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$402(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 529
    or-int/lit8 v2, v2, 0x4

    .line 531
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$502(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 533
    or-int/lit8 v2, v2, 0x8

    .line 535
    :cond_35
    iget v3, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->callQuality_:I

    #setter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->callQuality_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$602(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;I)I

    .line 536
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 537
    or-int/lit8 v2, v2, 0x10

    .line 539
    :cond_42
    iget-object v3, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$702(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 541
    or-int/lit8 v2, v2, 0x20

    .line 543
    :cond_4f
    iget-object v3, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$802(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    #setter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$902(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;I)I

    .line 545
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2

    .prologue
    .line 484
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 486
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 487
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 488
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 489
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 490
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->callQuality_:I

    .line 492
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 494
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    .line 496
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 497
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->clear()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->clear()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppPlatform()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2

    .prologue
    .line 649
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 650
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getAppPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 652
    return-object p0
.end method

.method public clearAppVersion()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2

    .prologue
    .line 702
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 703
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 705
    return-object p0
.end method

.method public clearCallQuality()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2

    .prologue
    .line 786
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->callQuality_:I

    .line 789
    return-object p0
.end method

.method public clearComments()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2

    .prologue
    .line 829
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 830
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 832
    return-object p0
.end method

.method public clearLogs()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2

    .prologue
    .line 882
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 883
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getLogs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    .line 885
    return-object p0
.end method

.method public clearSipStack()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2

    .prologue
    .line 755
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 756
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getSipStack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 758
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3

    .prologue
    .line 501
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->create()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->clone()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->clone()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->clone()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

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
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->clone()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppPlatform()Ljava/lang/String;
    .registers 4

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 619
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 620
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 624
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getAppPlatformBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 629
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 630
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 631
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 633
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 636
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

.method public getAppVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 672
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 673
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 677
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 682
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 683
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 684
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 686
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 689
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

.method public getCallQuality()I
    .registers 2

    .prologue
    .line 777
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->callQuality_:I

    return v0
.end method

.method public getComments()Ljava/lang/String;
    .registers 4

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 799
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 800
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 804
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getCommentsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 809
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 810
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 811
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 813
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 816
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 2

    .prologue
    .line 505
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLogs()Ljava/lang/String;
    .registers 4

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    .line 852
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 853
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    .line 857
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getLogsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 862
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    .line 863
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 864
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 866
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    .line 869
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

.method public getSipStack()Ljava/lang/String;
    .registers 4

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 725
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 726
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 730
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getSipStackBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 735
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 736
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 737
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 739
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 742
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

.method public hasAppPlatform()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 615
    iget v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasAppVersion()Z
    .registers 3

    .prologue
    .line 668
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

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

.method public hasCallQuality()Z
    .registers 3

    .prologue
    .line 774
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

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

.method public hasComments()Z
    .registers 3

    .prologue
    .line 795
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

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

.method public hasLogs()Z
    .registers 3

    .prologue
    .line 848
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

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

.method public hasSipStack()Z
    .registers 3

    .prologue
    .line 721
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

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
    const/4 v0, 0x0

    .line 582
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->hasAppPlatform()Z

    move-result v1

    if-nez v1, :cond_8

    .line 590
    :cond_7
    :goto_7
    return v0

    .line 586
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->hasAppVersion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 590
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 549
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 578
    :cond_6
    :goto_6
    return-object p0

    .line 550
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->hasAppPlatform()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 551
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 552
    #getter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$300(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 555
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->hasAppVersion()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 556
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 557
    #getter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$400(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 560
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->hasSipStack()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 561
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 562
    #getter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$500(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 565
    :cond_3d
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->hasCallQuality()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 566
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getCallQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->setCallQuality(I)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    .line 568
    :cond_4a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->hasComments()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 569
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 570
    #getter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$700(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 573
    :cond_5c
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->hasLogs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 574
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 575
    #getter for: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->access$800(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    const/4 v2, 0x0

    .line 599
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 604
    if-eqz v2, :cond_10

    .line 605
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    .line 608
    :cond_10
    return-object p0

    .line 600
    :catch_11
    move-exception v1

    .line 601
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-object v2, v0

    .line 602
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 604
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 605
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    :cond_21
    throw v3
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
    .line 468
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 468
    check-cast p1, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

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
    .line 468
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppPlatform(Ljava/lang/String;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 640
    if-nez p1, :cond_8

    .line 641
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 643
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 644
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 646
    return-object p0
.end method

.method public setAppPlatformBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 656
    if-nez p1, :cond_8

    .line 657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 659
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 660
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appPlatform_:Ljava/lang/Object;

    .line 662
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 693
    if-nez p1, :cond_8

    .line 694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 696
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 697
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 699
    return-object p0
.end method

.method public setAppVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 709
    if-nez p1, :cond_8

    .line 710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 712
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 713
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->appVersion_:Ljava/lang/Object;

    .line 715
    return-object p0
.end method

.method public setCallQuality(I)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 780
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 781
    iput p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->callQuality_:I

    .line 783
    return-object p0
.end method

.method public setComments(Ljava/lang/String;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 820
    if-nez p1, :cond_8

    .line 821
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 823
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 824
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 826
    return-object p0
.end method

.method public setCommentsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 836
    if-nez p1, :cond_8

    .line 837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 839
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 840
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->comments_:Ljava/lang/Object;

    .line 842
    return-object p0
.end method

.method public setLogs(Ljava/lang/String;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 873
    if-nez p1, :cond_8

    .line 874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 876
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 877
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    .line 879
    return-object p0
.end method

.method public setLogsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 889
    if-nez p1, :cond_8

    .line 890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 892
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 893
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->logs_:Ljava/lang/Object;

    .line 895
    return-object p0
.end method

.method public setSipStack(Ljava/lang/String;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 746
    if-nez p1, :cond_8

    .line 747
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 749
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 750
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 752
    return-object p0
.end method

.method public setSipStackBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 762
    if-nez p1, :cond_8

    .line 763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 765
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->bitField0_:I

    .line 766
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->sipStack_:Ljava/lang/Object;

    .line 768
    return-object p0
.end method
