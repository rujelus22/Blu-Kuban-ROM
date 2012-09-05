.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private boolValue_:Z

.field private dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

.field private gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

.field private stringValue_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31484
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 31630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 31687
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 31730
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 31485
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->maybeForceBuilderInitialization()V

    .line 31486
    return-void
.end method

.method static synthetic access$42600()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 1

    .prologue
    .line 31479
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 1

    .prologue
    .line 31491
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 31489
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 3

    .prologue
    .line 31516
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    .line 31517
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 31518
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 31520
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 6

    .prologue
    .line 31534
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 31535
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31536
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 31537
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 31538
    or-int/lit8 v2, v2, 0x1

    .line 31540
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$42802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31541
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 31542
    or-int/lit8 v2, v2, 0x2

    .line 31544
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$42902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Z)Z

    .line 31545
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 31546
    or-int/lit8 v2, v2, 0x4

    .line 31548
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$43002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 31549
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 31550
    or-int/lit8 v2, v2, 0x8

    .line 31552
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$43102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 31553
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$43202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;I)I

    .line 31554
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 31495
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 31497
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    .line 31499
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31500
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 31501
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31502
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 31503
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31504
    return-object p0
.end method

.method public clearBoolValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 31680
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    .line 31683
    return-object p0
.end method

.method public clearDateValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 31723
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 31725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31726
    return-object p0
.end method

.method public clearGender()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 31766
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 31768
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31769
    return-object p0
.end method

.method public clearStringValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 31654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31655
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 31657
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 31479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3

    .prologue
    .line 31508
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

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
    .line 31479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBoolValue()Z
    .registers 2

    .prologue
    .line 31671
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    return v0
.end method

.method public getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 2

    .prologue
    .line 31692
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 31479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 31512
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 2

    .prologue
    .line 31735
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31635
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 31636
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 31637
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31638
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 31641
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

.method public hasBoolValue()Z
    .registers 3

    .prologue
    .line 31668
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

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

.method public hasDateValue()Z
    .registers 3

    .prologue
    .line 31689
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

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

.method public hasGender()Z
    .registers 3

    .prologue
    .line 31732
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

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

.method public hasStringValue()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 31632
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31711
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 31713
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 31719
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31720
    return-object p0

    .line 31716
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

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
    .line 31479
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

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
    .line 31479
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31583
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 31584
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_60

    .line 31589
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31591
    :sswitch_d
    return-object p0

    .line 31596
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31597
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    goto :goto_0

    .line 31601
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31602
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    goto :goto_0

    .line 31606
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    .line 31607
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->hasDateValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 31608
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    .line 31610
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31611
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    goto :goto_0

    .line 31615
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    :sswitch_44
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    .line 31616
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->hasGender()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 31617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->getGender()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    .line 31619
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31620
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setGender(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    goto :goto_0

    .line 31584
    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 31558
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 31571
    :cond_6
    :goto_6
    return-object p0

    .line 31559
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31560
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 31562
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasBoolValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 31563
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getBoolValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setBoolValue(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 31565
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasDateValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 31566
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 31568
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31569
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getGender()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeGender(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    goto :goto_6
.end method

.method public mergeGender(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31754
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 31756
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 31762
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31763
    return-object p0

    .line 31759
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    goto :goto_20
.end method

.method public setBoolValue(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31674
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31675
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    .line 31677
    return-object p0
.end method

.method public setDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 31705
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 31707
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31708
    return-object p0
.end method

.method public setDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31695
    if-nez p1, :cond_8

    .line 31696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31698
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 31700
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31701
    return-object p0
.end method

.method public setGender(Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 31748
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 31750
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31751
    return-object p0
.end method

.method public setGender(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31738
    if-nez p1, :cond_8

    .line 31739
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31741
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 31743
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31744
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31645
    if-nez p1, :cond_8

    .line 31646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31648
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 31649
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 31651
    return-object p0
.end method
