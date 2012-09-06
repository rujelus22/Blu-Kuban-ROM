.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputFieldOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private hasError_:Z

.field private helpText_:Ljava/lang/Object;

.field private id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field private label_:Ljava/lang/Object;

.field private mandatory_:Z

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field private valueOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33502
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33717
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33741
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 33765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 33801
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 33886
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 33975
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 33503
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->maybeForceBuilderInitialization()V

    .line 33504
    return-void
.end method

.method static synthetic access$44900()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 1

    .prologue
    .line 33497
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 1

    .prologue
    .line 33509
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;-><init>()V

    return-object v0
.end method

.method private ensureValueOptionIsMutable()V
    .registers 3

    .prologue
    .line 33889
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 33890
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 33891
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33893
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 33507
    return-void
.end method


# virtual methods
.method public addAllValueOption(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;"
        }
    .end annotation

    .prologue
    .line 33956
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 33957
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 33959
    return-object p0
.end method

.method public addValueOption(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 33949
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 33950
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33952
    return-object p0
.end method

.method public addValueOption(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 33932
    if-nez p2, :cond_8

    .line 33933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33935
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 33936
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33938
    return-object p0
.end method

.method public addValueOption(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 33942
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 33943
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33945
    return-object p0
.end method

.method public addValueOption(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33922
    if-nez p1, :cond_8

    .line 33923
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33925
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 33926
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33928
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 3

    .prologue
    .line 33542
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    .line 33543
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 33544
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 33546
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 6

    .prologue
    .line 33560
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 33561
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33562
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33563
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 33564
    or-int/lit8 v2, v2, 0x1

    .line 33566
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33567
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 33568
    or-int/lit8 v2, v2, 0x2

    .line 33570
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 33571
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 33572
    or-int/lit8 v2, v2, 0x4

    .line 33574
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33575
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 33576
    or-int/lit8 v2, v2, 0x8

    .line 33578
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 33579
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 33580
    or-int/lit8 v2, v2, 0x10

    .line 33582
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Z)Z

    .line 33583
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 33584
    or-int/lit8 v2, v2, 0x20

    .line 33586
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Z)Z

    .line 33587
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 33588
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 33589
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33591
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/util/List;)Ljava/util/List;

    .line 33592
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 33593
    or-int/lit8 v2, v2, 0x40

    .line 33595
    :cond_77
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33596
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;I)I

    .line 33597
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33513
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 33514
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33515
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33516
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 33517
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 33519
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33520
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 33521
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33522
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    .line 33523
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33524
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    .line 33525
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 33527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 33529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33530
    return-object p0
.end method

.method public clearHasError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33879
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    .line 33882
    return-object p0
.end method

.method public clearHelpText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33999
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 34000
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHelpText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 34002
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33734
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33735
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33737
    return-object p0
.end method

.method public clearLabel()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33789
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33790
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 33792
    return-object p0
.end method

.method public clearMandatory()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33858
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    .line 33861
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33758
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33759
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 33761
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33837
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 33839
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33840
    return-object p0
.end method

.method public clearValueOption()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 33962
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 33963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33965
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3

    .prologue
    .line 33534
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

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
    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 33538
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public getHasError()Z
    .registers 2

    .prologue
    .line 33870
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    return v0
.end method

.method public getHelpText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33980
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 33981
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33982
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33983
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 33986
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

.method public getId()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    .registers 2

    .prologue
    .line 33722
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33770
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 33771
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33772
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33773
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 33776
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

.method public getMandatory()Z
    .registers 2

    .prologue
    .line 33849
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    .registers 2

    .prologue
    .line 33746
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    return-object v0
.end method

.method public getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 33806
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method public getValueOption(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 3
    .parameter "index"

    .prologue
    .line 33902
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    return-object v0
.end method

.method public getValueOptionCount()I
    .registers 2

    .prologue
    .line 33899
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueOptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33896
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasHasError()Z
    .registers 3

    .prologue
    .line 33867
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

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

.method public hasHelpText()Z
    .registers 3

    .prologue
    .line 33977
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33719
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 33767
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

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

.method public hasMandatory()Z
    .registers 3

    .prologue
    .line 33846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 33743
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

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

.method public hasValue()Z
    .registers 3

    .prologue
    .line 33803
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 33637
    const/4 v0, 0x1

    return v0
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
    .line 33497
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33497
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

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
    .line 33497
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33645
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 33646
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_96

    .line 33651
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 33653
    :sswitch_d
    return-object p0

    .line 33658
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 33659
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    move-result-object v3

    .line 33660
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    if-eqz v3, :cond_0

    .line 33661
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33662
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_0

    .line 33667
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 33668
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v3

    .line 33669
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    if-eqz v3, :cond_0

    .line 33670
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33671
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    goto :goto_0

    .line 33676
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    :sswitch_34
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33677
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 33681
    :sswitch_41
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v1

    .line 33682
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 33683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 33685
    :cond_52
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 33686
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    goto :goto_0

    .line 33690
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    :sswitch_5d
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33691
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    goto :goto_0

    .line 33695
    :sswitch_6a
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33696
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    goto :goto_0

    .line 33700
    :sswitch_77
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v1

    .line 33701
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 33702
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->addValueOption(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    goto/16 :goto_0

    .line 33706
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    :sswitch_87
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33707
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 33646
    nop

    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_34
        0x22 -> :sswitch_41
        0x28 -> :sswitch_5d
        0x30 -> :sswitch_6a
        0x3a -> :sswitch_77
        0x42 -> :sswitch_87
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 33601
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33633
    :cond_6
    :goto_6
    return-object p0

    .line 33602
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33603
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getId()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setId(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 33605
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 33606
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 33608
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 33609
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 33611
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 33612
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 33614
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasMandatory()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 33615
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getMandatory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setMandatory(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 33617
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasHasError()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 33618
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHasError()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setHasError(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 33620
    :cond_55
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45700(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 33621
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 33622
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45700(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 33623
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33630
    :cond_73
    :goto_73
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasHelpText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33631
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHelpText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setHelpText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    goto :goto_6

    .line 33625
    :cond_81
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 33626
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$45700(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_73
.end method

.method public mergeValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 33825
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 33827
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 33833
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33834
    return-object p0

    .line 33830
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    goto :goto_20
.end method

.method public setHasError(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33873
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33874
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    .line 33876
    return-object p0
.end method

.method public setHelpText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33990
    if-nez p1, :cond_8

    .line 33991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33993
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33994
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 33996
    return-object p0
.end method

.method public setId(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33725
    if-nez p1, :cond_8

    .line 33726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33728
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33729
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33731
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33780
    if-nez p1, :cond_8

    .line 33781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33783
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33784
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 33786
    return-object p0
.end method

.method public setMandatory(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33852
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33853
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    .line 33855
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33749
    if-nez p1, :cond_8

    .line 33750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33752
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33753
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 33755
    return-object p0
.end method

.method public setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 33819
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 33821
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33822
    return-object p0
.end method

.method public setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33809
    if-nez p1, :cond_8

    .line 33810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33812
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 33814
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 33815
    return-object p0
.end method

.method public setValueOption(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 33916
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 33917
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33919
    return-object p0
.end method

.method public setValueOption(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 33906
    if-nez p2, :cond_8

    .line 33907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33909
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 33910
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33912
    return-object p0
.end method
