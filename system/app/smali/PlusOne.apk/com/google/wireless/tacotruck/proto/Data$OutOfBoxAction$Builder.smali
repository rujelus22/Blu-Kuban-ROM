.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayDelayMs_:I

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33624
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33766
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 33790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 33826
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 33625
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->maybeForceBuilderInitialization()V

    .line 33626
    return-void
.end method

.method static synthetic access$45400()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 1

    .prologue
    .line 33619
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 1

    .prologue
    .line 33631
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 33629
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 3

    .prologue
    .line 33656
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    .line 33657
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 33658
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 33660
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 6

    .prologue
    .line 33674
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 33675
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33676
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33677
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 33678
    or-int/lit8 v2, v2, 0x1

    .line 33680
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$45602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 33681
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 33682
    or-int/lit8 v2, v2, 0x2

    .line 33684
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$45702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33685
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 33686
    or-int/lit8 v2, v2, 0x4

    .line 33688
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$45802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33689
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 33690
    or-int/lit8 v2, v2, 0x8

    .line 33692
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$45902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;I)I

    .line 33693
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$46002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;I)I

    .line 33694
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 33635
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 33636
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 33637
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33638
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 33639
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33640
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 33641
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33642
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    .line 33643
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33644
    return-object p0
.end method

.method public clearDisplayDelayMs()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 33876
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33877
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    .line 33879
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 33814
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33815
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 33817
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 33783
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33784
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 33786
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 33850
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33851
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 33853
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 33619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3

    .prologue
    .line 33648
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

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
    .line 33619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 33619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 33652
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDelayMs()I
    .registers 2

    .prologue
    .line 33867
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33795
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 33796
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33797
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33798
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 33801
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2

    .prologue
    .line 33771
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33831
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 33832
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33833
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33834
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 33837
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

.method public hasDisplayDelayMs()Z
    .registers 3

    .prologue
    .line 33864
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    .line 33792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33768
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 33828
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

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
    .line 33619
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

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
    .line 33619
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33723
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 33724
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 33729
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33731
    :sswitch_d
    return-object p0

    .line 33736
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 33737
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v2

    .line 33738
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    if-eqz v2, :cond_0

    .line 33739
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33740
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_0

    .line 33745
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33746
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 33750
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33751
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 33755
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    goto :goto_0

    .line 33724
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 33698
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33711
    :cond_6
    :goto_6
    return-object p0

    .line 33699
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33700
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 33702
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->hasText()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 33703
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 33705
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 33706
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 33708
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->hasDisplayDelayMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33709
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDisplayDelayMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setDisplayDelayMs(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    goto :goto_6
.end method

.method public setDisplayDelayMs(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33870
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33871
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    .line 33873
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33805
    if-nez p1, :cond_8

    .line 33806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33808
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33809
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 33811
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33774
    if-nez p1, :cond_8

    .line 33775
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33777
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33778
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 33780
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33841
    if-nez p1, :cond_8

    .line 33842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33844
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 33845
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 33847
    return-object p0
.end method
