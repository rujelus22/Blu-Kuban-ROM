.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClickOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;",
        ">;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClickOrBuilder;"
    }
.end annotation


# instance fields
.field private actionPosition_:I

.field private bitField0_:I

.field private clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

.field private displayPosition_:I

.field private notificationResultsCount_:I

.field private resultId_:Ljava/lang/Object;

.field private resultPosition_:I

.field private resultsShownAboveFold_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 890
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_CLICK_IN_RESULTS_LIST:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    .line 998
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultId_:Ljava/lang/Object;

    .line 703
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->maybeForceBuilderInitialization()V

    .line 704
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 1

    .prologue
    .line 697
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 751
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 754
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 1

    .prologue
    .line 709
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 707
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 3

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 742
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 744
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 758
    new-instance v2, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V

    .line 759
    iget v3, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 760
    const/4 v1, 0x0

    .line 761
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_63

    .line 764
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->access$302(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    .line 765
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 766
    or-int/lit8 v0, v0, 0x2

    .line 768
    :cond_1a
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultPosition_:I

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultPosition_:I
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->access$402(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I

    .line 769
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 770
    or-int/lit8 v0, v0, 0x4

    .line 772
    :cond_26
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultsShownAboveFold_:I

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultsShownAboveFold_:I
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->access$502(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I

    .line 773
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 774
    or-int/lit8 v0, v0, 0x8

    .line 776
    :cond_33
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->notificationResultsCount_:I

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->notificationResultsCount_:I
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->access$602(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I

    .line 777
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 778
    or-int/lit8 v0, v0, 0x10

    .line 780
    :cond_40
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->displayPosition_:I

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->displayPosition_:I
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->access$702(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I

    .line 781
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 782
    or-int/lit8 v0, v0, 0x20

    .line 784
    :cond_4d
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->access$802(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5a

    .line 786
    or-int/lit8 v0, v0, 0x40

    .line 788
    :cond_5a
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->actionPosition_:I

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->actionPosition_:I
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->access$902(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I

    .line 789
    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->access$1002(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I

    .line 790
    return-object v2

    :cond_63
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 713
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 714
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_CLICK_IN_RESULTS_LIST:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    .line 715
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 716
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultPosition_:I

    .line 717
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 718
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultsShownAboveFold_:I

    .line 719
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 720
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->notificationResultsCount_:I

    .line 721
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 722
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->displayPosition_:I

    .line 723
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultId_:Ljava/lang/Object;

    .line 725
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 726
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->actionPosition_:I

    .line 727
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 728
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearActionPosition()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2

    .prologue
    .line 1048
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 1049
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->actionPosition_:I

    .line 1051
    return-object p0
.end method

.method public clearClickTarget()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2

    .prologue
    .line 907
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 908
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_CLICK_IN_RESULTS_LIST:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    .line 910
    return-object p0
.end method

.method public clearDisplayPosition()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2

    .prologue
    .line 991
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 992
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->displayPosition_:I

    .line 994
    return-object p0
.end method

.method public clearNotificationResultsCount()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2

    .prologue
    .line 970
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 971
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->notificationResultsCount_:I

    .line 973
    return-object p0
.end method

.method public clearResultId()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2

    .prologue
    .line 1022
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 1023
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getResultId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultId_:Ljava/lang/Object;

    .line 1025
    return-object p0
.end method

.method public clearResultPosition()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2

    .prologue
    .line 928
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 929
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultPosition_:I

    .line 931
    return-object p0
.end method

.method public clearResultsShownAboveFold()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2

    .prologue
    .line 949
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 950
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultsShownAboveFold_:I

    .line 952
    return-object p0
.end method

.method public clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3

    .prologue
    .line 732
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

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
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionPosition()I
    .registers 2

    .prologue
    .line 1039
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->actionPosition_:I

    return v0
.end method

.method public getClickTarget()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2

    .prologue
    .line 736
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPosition()I
    .registers 2

    .prologue
    .line 982
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->displayPosition_:I

    return v0
.end method

.method public getNotificationResultsCount()I
    .registers 2

    .prologue
    .line 961
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->notificationResultsCount_:I

    return v0
.end method

.method public getResultId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultId_:Ljava/lang/Object;

    .line 1004
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1005
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1006
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultId_:Ljava/lang/Object;

    .line 1009
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getResultPosition()I
    .registers 2

    .prologue
    .line 919
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultPosition_:I

    return v0
.end method

.method public getResultsShownAboveFold()I
    .registers 2

    .prologue
    .line 940
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultsShownAboveFold_:I

    return v0
.end method

.method public hasActionPosition()Z
    .registers 3

    .prologue
    .line 1036
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

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

.method public hasClickTarget()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 892
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDisplayPosition()Z
    .registers 3

    .prologue
    .line 979
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

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

.method public hasNotificationResultsCount()Z
    .registers 3

    .prologue
    .line 958
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

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

.method public hasResultId()Z
    .registers 3

    .prologue
    .line 1000
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

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

.method public hasResultPosition()Z
    .registers 3

    .prologue
    .line 916
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

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

.method public hasResultsShownAboveFold()Z
    .registers 3

    .prologue
    .line 937
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->hasClickTarget()Z

    move-result v0

    if-nez v0, :cond_8

    .line 822
    const/4 v0, 0x0

    .line 824
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3
    .parameter

    .prologue
    .line 794
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 816
    :cond_6
    :goto_6
    return-object p0

    .line 795
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->hasClickTarget()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 796
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getClickTarget()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setClickTarget(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 798
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->hasResultPosition()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 799
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getResultPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 801
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->hasResultsShownAboveFold()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 802
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getResultsShownAboveFold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultsShownAboveFold(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 804
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->hasNotificationResultsCount()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 805
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getNotificationResultsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setNotificationResultsCount(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 807
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->hasDisplayPosition()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 808
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDisplayPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setDisplayPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 810
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->hasResultId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 811
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getResultId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 813
    :cond_55
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->hasActionPosition()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 814
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getActionPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setActionPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 833
    sparse-switch v0, :sswitch_data_70

    .line 838
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    :sswitch_d
    return-object p0

    .line 845
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 846
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->valueOf(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_0

    .line 848
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 849
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    goto :goto_0

    .line 854
    :sswitch_21
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 855
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultPosition_:I

    goto :goto_0

    .line 859
    :sswitch_2e
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 860
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultsShownAboveFold_:I

    goto :goto_0

    .line 864
    :sswitch_3b
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 865
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->notificationResultsCount_:I

    goto :goto_0

    .line 869
    :sswitch_48
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 870
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->displayPosition_:I

    goto :goto_0

    .line 874
    :sswitch_55
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 875
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultId_:Ljava/lang/Object;

    goto :goto_0

    .line 879
    :sswitch_62
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 880
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->actionPosition_:I

    goto :goto_0

    .line 833
    nop

    :sswitch_data_70
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x28 -> :sswitch_48
        0x32 -> :sswitch_55
        0x38 -> :sswitch_62
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 697
    check-cast p1, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    invoke-virtual {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setActionPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1042
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 1043
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->actionPosition_:I

    .line 1045
    return-object p0
.end method

.method public setClickTarget(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3
    .parameter

    .prologue
    .line 898
    if-nez p1, :cond_8

    .line 899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 901
    :cond_8
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 902
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    .line 904
    return-object p0
.end method

.method public setDisplayPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3
    .parameter

    .prologue
    .line 985
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 986
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->displayPosition_:I

    .line 988
    return-object p0
.end method

.method public setNotificationResultsCount(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3
    .parameter

    .prologue
    .line 964
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 965
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->notificationResultsCount_:I

    .line 967
    return-object p0
.end method

.method public setResultId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1013
    if-nez p1, :cond_8

    .line 1014
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1016
    :cond_8
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 1017
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultId_:Ljava/lang/Object;

    .line 1019
    return-object p0
.end method

.method setResultId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1028
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 1029
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultId_:Ljava/lang/Object;

    .line 1031
    return-void
.end method

.method public setResultPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3
    .parameter

    .prologue
    .line 922
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 923
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultPosition_:I

    .line 925
    return-object p0
.end method

.method public setResultsShownAboveFold(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 3
    .parameter

    .prologue
    .line 943
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->bitField0_:I

    .line 944
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->resultsShownAboveFold_:I

    .line 946
    return-object p0
.end method
