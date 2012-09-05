.class public final Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CoarseDateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;",
        "Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CoarseDateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private day_:I

.field private month_:I

.field private year_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27249
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27250
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->maybeForceBuilderInitialization()V

    .line 27251
    return-void
.end method

.method static synthetic access$37000()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 1

    .prologue
    .line 27244
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 1

    .prologue
    .line 27256
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27254
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 3

    .prologue
    .line 27279
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    .line 27280
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27281
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27283
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 6

    .prologue
    .line 27297
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 27298
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27299
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 27300
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 27301
    or-int/lit8 v2, v2, 0x1

    .line 27303
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->day_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->day_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->access$37202(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;I)I

    .line 27304
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 27305
    or-int/lit8 v2, v2, 0x2

    .line 27307
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->month_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->month_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->access$37302(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;I)I

    .line 27308
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 27309
    or-int/lit8 v2, v2, 0x4

    .line 27311
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->year_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->year_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->access$37402(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;I)I

    .line 27312
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->access$37502(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;I)I

    .line 27313
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 27260
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27261
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->day_:I

    .line 27262
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27263
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->month_:I

    .line 27264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27265
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->year_:I

    .line 27266
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27267
    return-object p0
.end method

.method public clearDay()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 2

    .prologue
    .line 27387
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27388
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->day_:I

    .line 27390
    return-object p0
.end method

.method public clearMonth()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 2

    .prologue
    .line 27408
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27409
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->month_:I

    .line 27411
    return-object p0
.end method

.method public clearYear()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 2

    .prologue
    .line 27429
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27430
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->year_:I

    .line 27432
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 3

    .prologue
    .line 27271
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

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
    .line 27244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDay()I
    .registers 2

    .prologue
    .line 27378
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->day_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 2

    .prologue
    .line 27275
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 27399
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->month_:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 27420
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->year_:I

    return v0
.end method

.method public hasDay()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 27375
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMonth()Z
    .registers 3

    .prologue
    .line 27396
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

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

.method public hasYear()Z
    .registers 3

    .prologue
    .line 27417
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

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
    .line 27244
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

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
    .line 27244
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27339
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 27340
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 27345
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27347
    :sswitch_d
    return-object p0

    .line 27352
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27353
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->day_:I

    goto :goto_0

    .line 27357
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27358
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->month_:I

    goto :goto_0

    .line 27362
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27363
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->year_:I

    goto :goto_0

    .line 27340
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 27317
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27327
    :cond_6
    :goto_6
    return-object p0

    .line 27318
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->hasDay()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27319
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDay()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->setDay(I)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    .line 27321
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 27322
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->setMonth(I)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    .line 27324
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27325
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getYear()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->setYear(I)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    goto :goto_6
.end method

.method public setDay(I)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27381
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27382
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->day_:I

    .line 27384
    return-object p0
.end method

.method public setMonth(I)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27402
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27403
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->month_:I

    .line 27405
    return-object p0
.end method

.method public setYear(I)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27423
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->bitField0_:I

    .line 27424
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->year_:I

    .line 27426
    return-object p0
.end method
