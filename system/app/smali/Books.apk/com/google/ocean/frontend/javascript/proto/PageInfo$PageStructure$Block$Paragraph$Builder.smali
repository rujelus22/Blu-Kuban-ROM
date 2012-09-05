.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1200()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 1

    .prologue
    .line 594
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 3

    .prologue
    .line 603
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;-><init>()V

    .line 604
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    .line 605
    return-object v0
.end method


# virtual methods
.method public addWordbox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 763
    if-nez p1, :cond_8

    .line 764
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 766
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 767
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Ljava/util/List;)Ljava/util/List;

    .line 769
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    return-object p0
.end method

.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    .registers 4

    .prologue
    .line 649
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    if-nez v1, :cond_c

    .line 650
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 653
    :cond_c
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_25

    .line 654
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Ljava/util/List;)Ljava/util/List;

    .line 657
    :cond_25
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    .line 658
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    .line 659
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 3

    .prologue
    .line 622
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

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
    .line 594
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 663
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 679
    :cond_6
    :goto_6
    return-object p0

    .line 664
    :cond_7
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasAppearance()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 665
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getAppearance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->setAppearance(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    .line 667
    :cond_14
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 668
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 669
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Ljava/util/List;)Ljava/util/List;

    .line 671
    :cond_34
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 673
    :cond_41
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesOnNextPage()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 674
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getContinuesOnNextPage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->setContinuesOnNextPage(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    .line 676
    :cond_4e
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesFromPrevPage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 677
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getContinuesFromPrevPage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->setContinuesFromPrevPage(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 688
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_36

    .line 692
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 693
    :sswitch_d
    return-object p0

    .line 698
    :sswitch_e
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    move-result-object v0

    .line 699
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 700
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->addWordbox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    goto :goto_0

    .line 704
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->setAppearance(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    goto :goto_0

    .line 708
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->setContinuesOnNextPage(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    goto :goto_0

    .line 712
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->setContinuesFromPrevPage(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    goto :goto_0

    .line 688
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x1a -> :sswitch_e
        0x2a -> :sswitch_1d
        0x38 -> :sswitch_25
        0x40 -> :sswitch_2d
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
    .line 594
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

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
    .line 594
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppearance(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 728
    if-nez p1, :cond_8

    .line 729
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 731
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasAppearance:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z

    .line 732
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->appearance_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Ljava/lang/String;)Ljava/lang/String;

    .line 733
    return-object p0
.end method

.method public setContinuesFromPrevPage(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesFromPrevPage:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z

    .line 819
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesFromPrevPage_:Z
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$2002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z

    .line 820
    return-object p0
.end method

.method public setContinuesOnNextPage(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesOnNextPage:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z

    .line 801
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesOnNextPage_:Z
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->access$1802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z

    .line 802
    return-object p0
.end method
