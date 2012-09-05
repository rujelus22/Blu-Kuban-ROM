.class public final Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CountryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Country;",
        "Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CountryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40366
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 40512
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 40367
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->maybeForceBuilderInitialization()V

    .line 40368
    return-void
.end method

.method static synthetic access$54500()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 1

    .prologue
    .line 40361
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 1

    .prologue
    .line 40373
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40371
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 3

    .prologue
    .line 40394
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    .line 40395
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Country;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40396
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40398
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40361
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 6

    .prologue
    .line 40412
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Country;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Country;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 40413
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Country;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 40414
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40415
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 40416
    or-int/lit8 v2, v2, 0x1

    .line 40418
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Country;->access$54702(Lcom/google/wireless/tacotruck/proto/Data$Country;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40419
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 40420
    or-int/lit8 v2, v2, 0x2

    .line 40422
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Country;->access$54802(Lcom/google/wireless/tacotruck/proto/Data$Country;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40423
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Country;->access$54902(Lcom/google/wireless/tacotruck/proto/Data$Country;I)I

    .line 40424
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40361
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40361
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2

    .prologue
    .line 40377
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 40379
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 40380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 40381
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 40382
    return-object p0
.end method

.method public clearCode()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2

    .prologue
    .line 40500
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 40501
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 40503
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2

    .prologue
    .line 40536
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 40537
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 40539
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40361
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40361
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 3

    .prologue
    .line 40386
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

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
    .line 40361
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40481
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 40482
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 40483
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40484
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 40487
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
    .line 40361
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40361
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2

    .prologue
    .line 40390
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40517
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 40518
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 40519
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40520
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 40523
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

.method public hasCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40478
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 40514
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

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
    .line 40361
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

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
    .line 40361
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40447
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 40448
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 40453
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40455
    :sswitch_d
    return-object p0

    .line 40460
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 40461
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    goto :goto_0

    .line 40465
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 40466
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 40448
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 40428
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40435
    :cond_6
    :goto_6
    return-object p0

    .line 40429
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40430
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->setCode(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    .line 40432
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40433
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    goto :goto_6
.end method

.method public setCode(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40491
    if-nez p1, :cond_8

    .line 40492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40494
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 40495
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 40497
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40527
    if-nez p1, :cond_8

    .line 40528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40530
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 40531
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 40533
    return-object p0
.end method
