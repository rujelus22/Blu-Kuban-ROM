.class public final Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$FetchStageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Webclient$FetchStage;",
        "Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Webclient$FetchStageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 703
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->STARTING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 604
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->maybeForceBuilderInitialization()V

    .line 605
    return-void
.end method

.method static synthetic access$700()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 1

    .prologue
    .line 598
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 1

    .prologue
    .line 610
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 608
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    .registers 3

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    .line 630
    .local v0, result:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 631
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 633
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    .registers 6

    .prologue
    .line 647
    new-instance v1, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;-><init>(Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V

    .line 648
    .local v1, result:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

    .line 649
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 650
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 651
    or-int/lit8 v2, v2, 0x1

    .line 653
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->access$902(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 654
    #setter for: Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->access$1002(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;I)I

    .line 655
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 2

    .prologue
    .line 614
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 615
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->STARTING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 616
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

    .line 617
    return-object p0
.end method

.method public clearStage()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 2

    .prologue
    .line 720
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

    .line 721
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->STARTING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 723
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 3

    .prologue
    .line 621
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

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
    .line 598
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    .registers 2

    .prologue
    .line 625
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    return-object v0
.end method

.method public getStage()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    return-object v0
.end method

.method public hasStage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 705
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

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
    .line 598
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

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
    .line 598
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 676
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 681
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 683
    :sswitch_d
    return-object p0

    .line 688
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 689
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->valueOf(I)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    move-result-object v2

    .line 690
    .local v2, value:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
    if-eqz v2, :cond_0

    .line 691
    iget v3, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

    .line 692
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    goto :goto_0

    .line 676
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 659
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 663
    :cond_6
    :goto_6
    return-object p0

    .line 660
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->hasStage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 661
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getStage()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->setStage(Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    goto :goto_6
.end method

.method public setStage(Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 711
    if-nez p1, :cond_8

    .line 712
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 714
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->bitField0_:I

    .line 715
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 717
    return-object p0
.end method
