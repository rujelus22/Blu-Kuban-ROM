.class public final Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$SearchQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$SearchQuery;",
        "Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Contact$SearchQueryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private query_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4589
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4685
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->query_:Ljava/lang/Object;

    .line 4590
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->maybeForceBuilderInitialization()V

    .line 4591
    return-void
.end method

.method static synthetic access$5700()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 1

    .prologue
    .line 4584
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 1

    .prologue
    .line 4596
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4594
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 3

    .prologue
    .line 4615
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    .line 4616
    .local v0, result:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4617
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4619
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 6

    .prologue
    .line 4633
    new-instance v1, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;-><init>(Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V

    .line 4634
    .local v1, result:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

    .line 4635
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4636
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4637
    or-int/lit8 v2, v2, 0x1

    .line 4639
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->access$5902(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4640
    #setter for: Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->access$6002(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;I)I

    .line 4641
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 4600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->query_:Ljava/lang/Object;

    .line 4602
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

    .line 4603
    return-object p0
.end method

.method public clearQuery()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 4709
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

    .line 4710
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->query_:Ljava/lang/Object;

    .line 4712
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 3

    .prologue
    .line 4607
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

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
    .line 4584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 2

    .prologue
    .line 4611
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4690
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->query_:Ljava/lang/Object;

    .line 4691
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4692
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4693
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->query_:Ljava/lang/Object;

    .line 4696
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

.method public hasQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4687
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

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
    .line 4653
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
    .line 4584
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4584
    check-cast p1, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

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
    .line 4584
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4661
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4662
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 4667
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4669
    :sswitch_d
    return-object p0

    .line 4674
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

    .line 4675
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->query_:Ljava/lang/Object;

    goto :goto_0

    .line 4662
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 4645
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4649
    :cond_6
    :goto_6
    return-object p0

    .line 4646
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4647
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->setQuery(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    goto :goto_6
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4700
    if-nez p1, :cond_8

    .line 4701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4703
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->bitField0_:I

    .line 4704
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->query_:Ljava/lang/Object;

    .line 4706
    return-object p0
.end method
