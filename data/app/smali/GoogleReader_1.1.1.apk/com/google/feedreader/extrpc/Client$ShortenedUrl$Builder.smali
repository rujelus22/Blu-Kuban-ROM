.class public final Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$ShortenedUrlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$ShortenedUrl;",
        "Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$ShortenedUrlOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27486
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27586
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->url_:Ljava/lang/Object;

    .line 27487
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->maybeForceBuilderInitialization()V

    .line 27488
    return-void
.end method

.method static synthetic access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27481
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$34300()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 1

    .prologue
    .line 27481
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->create()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27521
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    .line 27522
    .local v0, result:Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 27523
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 27526
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 1

    .prologue
    .line 27493
    new-instance v0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27491
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 3

    .prologue
    .line 27512
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    .line 27513
    .local v0, result:Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27514
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27516
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->build()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 5

    .prologue
    .line 27530
    new-instance v0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;-><init>(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 27531
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    .line 27532
    const/4 v2, 0x0

    .line 27533
    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    .line 27534
    or-int/lit8 v1, v2, 0x1

    .line 27536
    :goto_10
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->url_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->access$34502(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27537
    #setter for: Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->access$34602(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;I)I

    .line 27538
    return-object v0

    :cond_19
    move v1, v2

    goto :goto_10
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 2

    .prologue
    .line 27497
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->url_:Ljava/lang/Object;

    .line 27499
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    .line 27500
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->clear()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->clear()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearUrl()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 2

    .prologue
    .line 27610
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    .line 27611
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->url_:Ljava/lang/Object;

    .line 27613
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 3

    .prologue
    .line 27504
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->create()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->clone()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->clone()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->clone()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

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
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->clone()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 2

    .prologue
    .line 27508
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27481
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27591
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->url_:Ljava/lang/Object;

    .line 27592
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 27593
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27594
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->url_:Ljava/lang/Object;

    move-object v2, v1

    .line 27597
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 27588
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 27550
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_8

    .line 27552
    const/4 v0, 0x0

    .line 27554
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 3
    .parameter

    .prologue
    .line 27542
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 27546
    :goto_7
    return-object v0

    .line 27543
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 27544
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->setUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    :cond_15
    move-object v0, p0

    .line 27546
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27562
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 27563
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 27568
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27570
    :sswitch_d
    return-object p0

    .line 27575
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    .line 27576
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 27563
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
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
    .line 27481
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27481
    check-cast p1, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

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
    .line 27481
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27601
    if-nez p1, :cond_8

    .line 27602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27604
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    .line 27605
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->url_:Ljava/lang/Object;

    .line 27607
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 27616
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->bitField0_:I

    .line 27617
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->url_:Ljava/lang/Object;

    .line 27619
    return-void
.end method
