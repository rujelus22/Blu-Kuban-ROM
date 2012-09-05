.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1736
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3600()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 1

    .prologue
    .line 1730
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 3

    .prologue
    .line 1739
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;-><init>()V

    .line 1740
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    .line 1741
    return-object v0
.end method


# virtual methods
.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
    .registers 4

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    if-nez v1, :cond_c

    .line 1786
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1789
    :cond_c
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    .line 1790
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    .line 1791
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 3

    .prologue
    .line 1758
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

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
    .line 1730
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    return-object v0
.end method

.method public hasBox()Z
    .registers 2

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox()Z

    move-result v0

    return v0
.end method

.method public mergeBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4100(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 1896
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4100(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 1901
    :goto_2b
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z

    .line 1902
    return-object p0

    .line 1899
    :cond_32
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    goto :goto_2b
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1795
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1808
    :cond_6
    :goto_6
    return-object p0

    .line 1796
    :cond_7
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasWord()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1797
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->setWord(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    .line 1799
    :cond_14
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1800
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->mergeBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    .line 1802
    :cond_21
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasFlowWithNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1803
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getFlowWithNext()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->setFlowWithNext(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    .line 1805
    :cond_2e
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBaselineY()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1806
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getBaselineY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->setBaselineY(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1816
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1817
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_42

    .line 1821
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1822
    :sswitch_d
    return-object p0

    .line 1827
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->setWord(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    goto :goto_0

    .line 1831
    :sswitch_16
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    .line 1832
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->hasBox()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1833
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    .line 1835
    :cond_27
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1836
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->setBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    goto :goto_0

    .line 1840
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->setFlowWithNext(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    goto :goto_0

    .line 1844
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->setBaselineY(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    goto :goto_0

    .line 1817
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_32
        0x20 -> :sswitch_3a
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
    .line 1730
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

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
    .line 1730
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBaselineY(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBaselineY:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z

    .line 1937
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->baselineY_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;I)I

    .line 1938
    return-object p0
.end method

.method public setBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1881
    if-nez p1, :cond_8

    .line 1882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1884
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z

    .line 1885
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 1886
    return-object p0
.end method

.method public setFlowWithNext(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasFlowWithNext:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z

    .line 1919
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->flowWithNext_:Z
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$4302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z

    .line 1920
    return-object p0
.end method

.method public setWord(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1860
    if-nez p1, :cond_8

    .line 1861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1863
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasWord:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$3802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z

    .line 1864
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->word_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->access$3902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Ljava/lang/String;)Ljava/lang/String;

    .line 1865
    return-object p0
.end method
