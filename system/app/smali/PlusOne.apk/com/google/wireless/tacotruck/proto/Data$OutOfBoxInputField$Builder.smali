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
    .line 30721
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30936
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 30960
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 31020
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 31105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 31194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 30722
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->maybeForceBuilderInitialization()V

    .line 30723
    return-void
.end method

.method static synthetic access$41400()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 1

    .prologue
    .line 30716
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 1

    .prologue
    .line 30728
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;-><init>()V

    return-object v0
.end method

.method private ensureValueOptionIsMutable()V
    .registers 3

    .prologue
    .line 31108
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 31109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 31110
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31112
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30726
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
    .line 31175
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 31176
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 31178
    return-object p0
.end method

.method public addValueOption(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 31168
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 31169
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31171
    return-object p0
.end method

.method public addValueOption(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 31151
    if-nez p2, :cond_8

    .line 31152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31154
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 31155
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31157
    return-object p0
.end method

.method public addValueOption(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 31161
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 31162
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31164
    return-object p0
.end method

.method public addValueOption(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31141
    if-nez p1, :cond_8

    .line 31142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31144
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 31145
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31147
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 3

    .prologue
    .line 30761
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    .line 30762
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30763
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30765
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30716
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 6

    .prologue
    .line 30779
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 30780
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30781
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30782
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30783
    or-int/lit8 v2, v2, 0x1

    .line 30785
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$41602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 30786
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 30787
    or-int/lit8 v2, v2, 0x2

    .line 30789
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$41702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30790
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 30791
    or-int/lit8 v2, v2, 0x4

    .line 30793
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$41802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30794
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 30795
    or-int/lit8 v2, v2, 0x8

    .line 30797
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$41902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 30798
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 30799
    or-int/lit8 v2, v2, 0x10

    .line 30801
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->mandatory_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$42002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Z)Z

    .line 30802
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 30803
    or-int/lit8 v2, v2, 0x20

    .line 30805
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasError_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$42102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Z)Z

    .line 30806
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 30807
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 30808
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30810
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$42202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/util/List;)Ljava/util/List;

    .line 30811
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 30812
    or-int/lit8 v2, v2, 0x40

    .line 30814
    :cond_77
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->helpText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$42302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30815
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$42402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;I)I

    .line 30816
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30716
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30716
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30732
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30733
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 30734
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30735
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30736
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 30738
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30739
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 30740
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30741
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    .line 30742
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30743
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    .line 30744
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30745
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 30746
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30747
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 30748
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30749
    return-object p0
.end method

.method public clearHasError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 31098
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    .line 31101
    return-object p0
.end method

.method public clearHelpText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 31218
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31219
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHelpText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 31221
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 30953
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30954
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 30956
    return-object p0
.end method

.method public clearLabel()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 31008
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31009
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 31011
    return-object p0
.end method

.method public clearMandatory()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 31077
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    .line 31080
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 30977
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30978
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30980
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 31056
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 31058
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31059
    return-object p0
.end method

.method public clearValueOption()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 2

    .prologue
    .line 31181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 31182
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31184
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30716
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30716
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3

    .prologue
    .line 30753
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
    .line 30716
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30716
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30716
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 30757
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    return-object v0
.end method

.method public getHasError()Z
    .registers 2

    .prologue
    .line 31089
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    return v0
.end method

.method public getHelpText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31199
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 31200
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 31201
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31202
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 31205
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
    .line 30941
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30989
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 30990
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30991
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30992
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 30995
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
    .line 31068
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    .registers 2

    .prologue
    .line 30965
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    return-object v0
.end method

.method public getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 31025
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method public getValueOption(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 3
    .parameter "index"

    .prologue
    .line 31121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    return-object v0
.end method

.method public getValueOptionCount()I
    .registers 2

    .prologue
    .line 31118
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
    .line 31115
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasHasError()Z
    .registers 3

    .prologue
    .line 31086
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
    .line 31196
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

    .line 30938
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
    .line 30986
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
    .line 31065
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
    .line 30962
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
    .line 31022
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
    .line 30716
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

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
    .line 30716
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
    .line 30864
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 30865
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_96

    .line 30870
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 30872
    :sswitch_d
    return-object p0

    .line 30877
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 30878
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    move-result-object v3

    .line 30879
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    if-eqz v3, :cond_0

    .line 30880
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30881
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_0

    .line 30886
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 30887
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v3

    .line 30888
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    if-eqz v3, :cond_0

    .line 30889
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30890
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    goto :goto_0

    .line 30895
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    :sswitch_34
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30896
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 30900
    :sswitch_41
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v1

    .line 30901
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 30902
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 30904
    :cond_52
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 30905
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    goto :goto_0

    .line 30909
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    :sswitch_5d
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30910
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    goto :goto_0

    .line 30914
    :sswitch_6a
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    goto :goto_0

    .line 30919
    :sswitch_77
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v1

    .line 30920
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 30921
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->addValueOption(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    goto/16 :goto_0

    .line 30925
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    :sswitch_87
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30926
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 30865
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
    .line 30820
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30852
    :cond_6
    :goto_6
    return-object p0

    .line 30821
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30822
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getId()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setId(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 30824
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 30825
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 30827
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 30828
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 30830
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 30831
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 30833
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasMandatory()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 30834
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getMandatory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setMandatory(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 30836
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasHasError()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 30837
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHasError()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setHasError(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 30839
    :cond_55
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$42200(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 30840
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 30841
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$42200(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    .line 30842
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30849
    :cond_73
    :goto_73
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->hasHelpText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30850
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getHelpText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->setHelpText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    goto :goto_6

    .line 30844
    :cond_81
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 30845
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->valueOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->access$42200(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_73
.end method

.method public mergeValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 31046
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 31052
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31053
    return-object p0

    .line 31049
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    goto :goto_20
.end method

.method public setHasError(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31092
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31093
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->hasError_:Z

    .line 31095
    return-object p0
.end method

.method public setHelpText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31209
    if-nez p1, :cond_8

    .line 31210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31212
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31213
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->helpText_:Ljava/lang/Object;

    .line 31215
    return-object p0
.end method

.method public setId(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30944
    if-nez p1, :cond_8

    .line 30945
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30947
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30948
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->id_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 30950
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30999
    if-nez p1, :cond_8

    .line 31000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31002
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31003
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->label_:Ljava/lang/Object;

    .line 31005
    return-object p0
.end method

.method public setMandatory(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31071
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31072
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mandatory_:Z

    .line 31074
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30968
    if-nez p1, :cond_8

    .line 30969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30971
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 30972
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30974
    return-object p0
.end method

.method public setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 31038
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 31040
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31041
    return-object p0
.end method

.method public setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31028
    if-nez p1, :cond_8

    .line 31029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31031
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 31033
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->bitField0_:I

    .line 31034
    return-object p0
.end method

.method public setValueOption(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 31135
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 31136
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31138
    return-object p0
.end method

.method public setValueOption(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 31125
    if-nez p2, :cond_8

    .line 31126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31128
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->ensureValueOptionIsMutable()V

    .line 31129
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->valueOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31131
    return-object p0
.end method
