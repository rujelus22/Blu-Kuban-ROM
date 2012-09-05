.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2200()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 1

    .prologue
    .line 989
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 3

    .prologue
    .line 998
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;-><init>()V

    .line 999
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    .line 1000
    return-object v0
.end method


# virtual methods
.method public addParagraph(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1156
    if-nez p1, :cond_8

    .line 1157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1159
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1160
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Ljava/util/List;)Ljava/util/List;

    .line 1162
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    return-object p0
.end method

.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    .registers 4

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    if-nez v1, :cond_c

    .line 1045
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1048
    :cond_c
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_25

    .line 1049
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Ljava/util/List;)Ljava/util/List;

    .line 1052
    :cond_25
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    .line 1053
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    .line 1054
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 3

    .prologue
    .line 1017
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

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
    .line 989
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    return-object v0
.end method

.method public hasBox()Z
    .registers 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox()Z

    move-result v0

    return v0
.end method

.method public mergeBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 1208
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 1213
    :goto_2b
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Z)Z

    .line 1214
    return-object p0

    .line 1211
    :cond_32
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    goto :goto_2b
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1058
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1071
    :cond_6
    :goto_6
    return-object p0

    .line 1059
    :cond_7
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasAppearance()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1060
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getAppearance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->setAppearance(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    .line 1062
    :cond_14
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1063
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1064
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Ljava/util/List;)Ljava/util/List;

    .line 1066
    :cond_34
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1068
    :cond_41
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1069
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->mergeBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1080
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_42

    .line 1084
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1085
    :sswitch_d
    return-object p0

    .line 1090
    :sswitch_e
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    move-result-object v0

    .line 1091
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1092
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->addParagraph(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    goto :goto_0

    .line 1096
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->setAppearance(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    goto :goto_0

    .line 1100
    :sswitch_26
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    .line 1101
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->hasBox()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1102
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    .line 1104
    :cond_37
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1105
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->setBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    goto :goto_0

    .line 1080
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x13 -> :sswitch_e
        0x22 -> :sswitch_1e
        0x4a -> :sswitch_26
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
    .line 989
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

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
    .line 989
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppearance(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1121
    if-nez p1, :cond_8

    .line 1122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1124
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasAppearance:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Z)Z

    .line 1125
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->appearance_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Ljava/lang/String;)Ljava/lang/String;

    .line 1126
    return-object p0
.end method

.method public setBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1193
    if-nez p1, :cond_8

    .line 1194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1196
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Z)Z

    .line 1197
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->access$2802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 1198
    return-object p0
.end method
