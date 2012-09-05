.class public final Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

.field private bitField0_:I

.field private continueUrl_:Ljava/lang/Object;

.field private input_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
            ">;"
        }
    .end annotation
.end field

.field private integrated_:Z

.field private upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37640
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 37898
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 37941
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 37965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 37641
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->maybeForceBuilderInitialization()V

    .line 37642
    return-void
.end method

.method static synthetic access$52000(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37635
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$52100()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 1

    .prologue
    .line 37635
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    .line 37684
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 37685
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 37688
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 1

    .prologue
    .line 37647
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInputIsMutable()V
    .registers 3

    .prologue
    .line 37812
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 37813
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 37814
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37816
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37645
    return-void
.end method


# virtual methods
.method public addAllInput(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 37879
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 37880
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 37882
    return-object p0
.end method

.method public addInput(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37872
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 37873
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37875
    return-object p0
.end method

.method public addInput(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37855
    if-nez p2, :cond_8

    .line 37856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37858
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 37859
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37861
    return-object p0
.end method

.method public addInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 37865
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 37866
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37868
    return-object p0
.end method

.method public addInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37845
    if-nez p1, :cond_8

    .line 37846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37848
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 37849
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37851
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 3

    .prologue
    .line 37674
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    .line 37675
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37676
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37678
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 6

    .prologue
    .line 37692
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 37693
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37694
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37695
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 37696
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 37697
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37699
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$52302(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Ljava/util/List;)Ljava/util/List;

    .line 37700
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 37701
    or-int/lit8 v2, v2, 0x1

    .line 37703
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$52402(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 37704
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 37705
    or-int/lit8 v2, v2, 0x2

    .line 37707
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$52502(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 37708
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 37709
    or-int/lit8 v2, v2, 0x4

    .line 37711
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->continueUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$52602(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37712
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 37713
    or-int/lit8 v2, v2, 0x8

    .line 37715
    :cond_50
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->integrated_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$52702(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Z)Z

    .line 37716
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$52802(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;I)I

    .line 37717
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 37651
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37652
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 37653
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37654
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 37655
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37656
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 37657
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 37659
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    .line 37661
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37662
    return-object p0
.end method

.method public clearAction()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 37934
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 37936
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37937
    return-object p0
.end method

.method public clearContinueUrl()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 37989
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37990
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 37992
    return-object p0
.end method

.method public clearInput()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 37885
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 37886
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37888
    return-object p0
.end method

.method public clearIntegrated()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38015
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    .line 38018
    return-object p0
.end method

.method public clearUpgradeType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 37958
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37959
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 37961
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3

    .prologue
    .line 37666
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

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
    .line 37635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 37903
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getContinueUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37970
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 37971
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37972
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37973
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 37976
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 2

    .prologue
    .line 37670
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInput(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 3
    .parameter "index"

    .prologue
    .line 37825
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method public getInputCount()I
    .registers 2

    .prologue
    .line 37822
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37819
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIntegrated()Z
    .registers 2

    .prologue
    .line 38006
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    return v0
.end method

.method public getUpgradeType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    .registers 2

    .prologue
    .line 37946
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    return-object v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    .line 37900
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

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

.method public hasContinueUrl()Z
    .registers 3

    .prologue
    .line 37967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

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

.method public hasIntegrated()Z
    .registers 3

    .prologue
    .line 38003
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

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

.method public hasUpgradeType()Z
    .registers 3

    .prologue
    .line 37943
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

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

.method public mergeAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 37922
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 37924
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 37930
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37931
    return-object p0

    .line 37927
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    goto :goto_1f
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
    .line 37635
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

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
    .line 37635
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37756
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 37757
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_66

    .line 37762
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37764
    :sswitch_d
    return-object p0

    .line 37769
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v1

    .line 37770
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 37771
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->addInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    goto :goto_0

    .line 37775
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v1

    .line 37776
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->hasAction()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 37777
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 37779
    :cond_2e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 37780
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    goto :goto_0

    .line 37784
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    :sswitch_39
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 37785
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    move-result-object v3

    .line 37786
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    if-eqz v3, :cond_0

    .line 37787
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37788
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    goto :goto_0

    .line 37793
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    :sswitch_4c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37794
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 37798
    :sswitch_59
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37799
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    goto :goto_0

    .line 37757
    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_39
        0x22 -> :sswitch_4c
        0x28 -> :sswitch_59
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 37721
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37744
    :cond_6
    :goto_6
    return-object p0

    .line 37722
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$52300(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 37723
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 37724
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$52300(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 37725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37732
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 37733
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 37735
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->hasUpgradeType()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 37736
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getUpgradeType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setUpgradeType(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 37738
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->hasContinueUrl()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 37739
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setContinueUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 37741
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->hasIntegrated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37742
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getIntegrated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setIntegrated(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    goto :goto_6

    .line 37727
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 37728
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$52300(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 37916
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 37918
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37919
    return-object p0
.end method

.method public setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37906
    if-nez p1, :cond_8

    .line 37907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37909
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 37911
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37912
    return-object p0
.end method

.method public setContinueUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37980
    if-nez p1, :cond_8

    .line 37981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37983
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37984
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 37986
    return-object p0
.end method

.method public setInput(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37839
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 37840
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37842
    return-object p0
.end method

.method public setInput(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37829
    if-nez p2, :cond_8

    .line 37830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37832
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 37833
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37835
    return-object p0
.end method

.method public setIntegrated(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38009
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38010
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    .line 38012
    return-object p0
.end method

.method public setUpgradeType(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37949
    if-nez p1, :cond_8

    .line 37950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37952
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 37953
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 37955
    return-object p0
.end method
