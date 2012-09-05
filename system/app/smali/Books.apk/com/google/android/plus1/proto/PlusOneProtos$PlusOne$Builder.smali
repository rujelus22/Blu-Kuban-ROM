.class public final Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusOneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;",
        "Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$800()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 1

    .prologue
    .line 495
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 3

    .prologue
    .line 504
    new-instance v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    invoke-direct {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;-><init>()V

    .line 505
    .local v0, builder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    new-instance v1, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;-><init>(Lcom/google/android/plus1/proto/PlusOneProtos$1;)V

    iput-object v1, v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    .line 506
    return-object v0
.end method


# virtual methods
.method public addFriend(Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 718
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1002(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Ljava/util/List;)Ljava/util/List;

    .line 720
    :cond_16
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;->build()Lcom/google/android/plus1/proto/PlusOneProtos$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    return-object p0
.end method

.method public addFriend(Lcom/google/android/plus1/proto/PlusOneProtos$Person;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 707
    if-nez p1, :cond_8

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 710
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 711
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1002(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Ljava/util/List;)Ljava/util/List;

    .line 713
    :cond_1e
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    return-object p0
.end method

.method public build()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 535
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 537
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    .registers 4

    .prologue
    .line 550
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    if-nez v1, :cond_c

    .line 551
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_c
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_25

    .line 555
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    iget-object v2, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1002(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Ljava/util/List;)Ljava/util/List;

    .line 558
    :cond_25
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    .line 559
    .local v0, returnMe:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    .line 560
    return-object v0
.end method

.method public clone()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 3

    .prologue
    .line 523
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

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
    .line 495
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 564
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 583
    :cond_6
    :goto_6
    return-object p0

    .line 565
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 566
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    .line 568
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 569
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setValue(Z)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    .line 571
    :cond_21
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasTotalPlusOneCount()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 572
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getTotalPlusOneCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setTotalPlusOneCount(I)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    .line 574
    :cond_2e
    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 575
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 576
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1002(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Ljava/util/List;)Ljava/util/List;

    .line 578
    :cond_4e
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 580
    :cond_5b
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasAbuseToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getAbuseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 592
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3e

    .line 596
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    :sswitch_d
    return-object p0

    .line 602
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    goto :goto_0

    .line 606
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setValue(Z)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    goto :goto_0

    .line 610
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setTotalPlusOneCount(I)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    goto :goto_0

    .line 614
    :sswitch_26
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;

    move-result-object v0

    .line 615
    .local v0, subBuilder:Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 616
    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$Person;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->addFriend(Lcom/google/android/plus1/proto/PlusOneProtos$Person;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    goto :goto_0

    .line 620
    .end local v0           #subBuilder:Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    goto :goto_0

    .line 592
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_35
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
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

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
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 744
    if-nez p1, :cond_8

    .line 745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 747
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasAbuseToken:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1702(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z

    .line 748
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->abuseToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1802(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Ljava/lang/String;)Ljava/lang/String;

    .line 749
    return-object p0
.end method

.method public setTotalPlusOneCount(I)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasTotalPlusOneCount:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1502(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z

    .line 676
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->totalPlusOneCount_:I
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1602(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;I)I

    .line 677
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 636
    if-nez p1, :cond_8

    .line 637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 639
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasUri:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1102(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z

    .line 640
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->uri_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1202(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    return-object p0
.end method

.method public setValue(Z)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasValue:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1302(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z

    .line 658
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->value_:Z
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->access$1402(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z

    .line 659
    return-object p0
.end method
