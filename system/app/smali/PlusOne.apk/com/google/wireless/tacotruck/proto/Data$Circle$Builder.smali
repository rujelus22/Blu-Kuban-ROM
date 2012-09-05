.class public final Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CircleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Circle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
        "Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CircleOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field private id_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private size_:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 11581
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11741
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 11765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 11801
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 11858
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 11582
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->maybeForceBuilderInitialization()V

    .line 11583
    return-void
.end method

.method static synthetic access$14700(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11576
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14800()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 1

    .prologue
    .line 11576
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    .line 11625
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 11626
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 11629
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 1

    .prologue
    .line 11588
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 11586
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 3

    .prologue
    .line 11615
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    .line 11616
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11617
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11619
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 6

    .prologue
    .line 11633
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 11634
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11635
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11636
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 11637
    or-int/lit8 v2, v2, 0x1

    .line 11639
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$15002(Lcom/google/wireless/tacotruck/proto/Data$Circle;Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 11640
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 11641
    or-int/lit8 v2, v2, 0x2

    .line 11643
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$15102(Lcom/google/wireless/tacotruck/proto/Data$Circle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11644
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 11645
    or-int/lit8 v2, v2, 0x4

    .line 11647
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$15202(Lcom/google/wireless/tacotruck/proto/Data$Circle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11648
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 11649
    or-int/lit8 v2, v2, 0x8

    .line 11651
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$15302(Lcom/google/wireless/tacotruck/proto/Data$Circle;I)I

    .line 11652
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 11653
    or-int/lit8 v2, v2, 0x10

    .line 11655
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$15402(Lcom/google/wireless/tacotruck/proto/Data$Circle;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 11656
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$15502(Lcom/google/wireless/tacotruck/proto/Data$Circle;I)I

    .line 11657
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 11592
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11593
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 11594
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 11596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11597
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 11598
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11599
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    .line 11600
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11601
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 11602
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11603
    return-object p0
.end method

.method public clearCircleType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 11875
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11876
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 11878
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 11789
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11790
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 11792
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 11825
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11826
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 11828
    return-object p0
.end method

.method public clearSize()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 11851
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11852
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    .line 11854
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11758
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11759
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 11761
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 11576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3

    .prologue
    .line 11607
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

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
    .line 11576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 11863
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 11576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 2

    .prologue
    .line 11611
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11770
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 11771
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11772
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11773
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 11776
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

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11806
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 11807
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11808
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11809
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 11812
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

.method public getSize()I
    .registers 2

    .prologue
    .line 11842
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11746
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    return-object v0
.end method

.method public hasCircleType()Z
    .registers 3

    .prologue
    .line 11860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 11767
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 11803
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

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

.method public hasSize()Z
    .registers 3

    .prologue
    .line 11839
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 11743
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 11576
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

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
    .line 11576
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11689
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 11690
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5c

    .line 11695
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11697
    :sswitch_d
    return-object p0

    .line 11702
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 11703
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    move-result-object v2

    .line 11704
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    if-eqz v2, :cond_0

    .line 11705
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11706
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    goto :goto_0

    .line 11711
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11712
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 11716
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11717
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 11721
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11722
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    goto :goto_0

    .line 11726
    :sswitch_48
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 11727
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v2

    .line 11728
    .local v2, value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    if-eqz v2, :cond_0

    .line 11729
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11730
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_0

    .line 11690
    nop

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x28 -> :sswitch_48
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 11661
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 11677
    :cond_6
    :goto_6
    return-object p0

    .line 11662
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11663
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 11665
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 11666
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 11668
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 11669
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 11671
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 11672
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setSize(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 11674
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasCircleType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11675
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    goto :goto_6
.end method

.method public setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11866
    if-nez p1, :cond_8

    .line 11867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11869
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11870
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 11872
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11780
    if-nez p1, :cond_8

    .line 11781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11783
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11784
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 11786
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11816
    if-nez p1, :cond_8

    .line 11817
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11819
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11820
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 11822
    return-object p0
.end method

.method public setSize(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11845
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11846
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    .line 11848
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11749
    if-nez p1, :cond_8

    .line 11750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11752
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 11753
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 11755
    return-object p0
.end method
