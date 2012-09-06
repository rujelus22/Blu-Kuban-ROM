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
    .line 34265
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 34411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 34468
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 34511
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 34266
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->maybeForceBuilderInitialization()V

    .line 34267
    return-void
.end method

.method static synthetic access$46100()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 1

    .prologue
    .line 34260
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 1

    .prologue
    .line 34272
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34270
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34260
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 3

    .prologue
    .line 34297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    .line 34298
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 34299
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 34301
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34260
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 6

    .prologue
    .line 34315
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 34316
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34317
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 34318
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 34319
    or-int/lit8 v2, v2, 0x1

    .line 34321
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$46302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34322
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 34323
    or-int/lit8 v2, v2, 0x2

    .line 34325
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$46402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Z)Z

    .line 34326
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 34327
    or-int/lit8 v2, v2, 0x4

    .line 34329
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$46502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 34330
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 34331
    or-int/lit8 v2, v2, 0x8

    .line 34333
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$46602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 34334
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->access$46702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;I)I

    .line 34335
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34260
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34260
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 34276
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34277
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 34278
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    .line 34280
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34281
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 34282
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34283
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 34284
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34285
    return-object p0
.end method

.method public clearBoolValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 34461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    .line 34464
    return-object p0
.end method

.method public clearDateValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 34504
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 34506
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34507
    return-object p0
.end method

.method public clearGender()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 34547
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 34549
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34550
    return-object p0
.end method

.method public clearStringValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 34435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34436
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 34438
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34260
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34260
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3

    .prologue
    .line 34289
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
    .line 34260
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBoolValue()Z
    .registers 2

    .prologue
    .line 34452
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    return v0
.end method

.method public getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 2

    .prologue
    .line 34473
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 34260
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34260
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 34293
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 2

    .prologue
    .line 34516
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34416
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 34417
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 34418
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34419
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 34422
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
    .line 34449
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
    .line 34470
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
    .line 34513
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

    .line 34413
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 34356
    const/4 v0, 0x1

    return v0
.end method

.method public mergeDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 34492
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 34494
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 34500
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34501
    return-object p0

    .line 34497
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
    .line 34260
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34260
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

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
    .line 34260
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
    .line 34364
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 34365
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_60

    .line 34370
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34372
    :sswitch_d
    return-object p0

    .line 34377
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34378
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    goto :goto_0

    .line 34382
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34383
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    goto :goto_0

    .line 34387
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    .line 34388
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->hasDateValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 34389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    .line 34391
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 34392
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    goto :goto_0

    .line 34396
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    :sswitch_44
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    .line 34397
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->hasGender()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 34398
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->getGender()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    .line 34400
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 34401
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setGender(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    goto :goto_0

    .line 34365
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
    .line 34339
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34352
    :cond_6
    :goto_6
    return-object p0

    .line 34340
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34341
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 34343
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasBoolValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 34344
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getBoolValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->setBoolValue(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 34346
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasDateValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 34347
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 34349
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34350
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getGender()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeGender(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    goto :goto_6
.end method

.method public mergeGender(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 34535
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 34537
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 34543
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34544
    return-object p0

    .line 34540
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    goto :goto_20
.end method

.method public setBoolValue(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34455
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34456
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->boolValue_:Z

    .line 34458
    return-object p0
.end method

.method public setDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 34486
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 34488
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34489
    return-object p0
.end method

.method public setDateValue(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34476
    if-nez p1, :cond_8

    .line 34477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34479
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 34481
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34482
    return-object p0
.end method

.method public setGender(Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 34529
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 34531
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34532
    return-object p0
.end method

.method public setGender(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34519
    if-nez p1, :cond_8

    .line 34520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34522
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 34524
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34525
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34426
    if-nez p1, :cond_8

    .line 34427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34429
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->bitField0_:I

    .line 34430
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 34432
    return-object p0
.end method
