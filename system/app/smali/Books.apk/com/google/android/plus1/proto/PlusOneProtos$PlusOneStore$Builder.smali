.class public final Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusOneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;",
        "Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1651
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1645
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->buildParsed()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 1

    .prologue
    .line 1645
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1693
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1696
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 3

    .prologue
    .line 1654
    new-instance v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    invoke-direct {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;-><init>()V

    .line 1655
    .local v0, builder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    new-instance v1, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;-><init>(Lcom/google/android/plus1/proto/PlusOneProtos$1;)V

    iput-object v1, v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    .line 1656
    return-object v0
.end method


# virtual methods
.method public addOperation(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1888
    if-nez p1, :cond_8

    .line 1889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1891
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4300(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1892
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4302(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Ljava/util/List;)Ljava/util/List;

    .line 1894
    :cond_1e
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4300(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1895
    return-object p0
.end method

.method public addPlusOne(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1837
    if-nez p1, :cond_8

    .line 1838
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1840
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4200(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1841
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4202(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Ljava/util/List;)Ljava/util/List;

    .line 1843
    :cond_1e
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4200(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    return-object p0
.end method

.method public build()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .registers 2

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1685
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1687
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .registers 4

    .prologue
    .line 1700
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    if-nez v1, :cond_c

    .line 1701
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1704
    :cond_c
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4200(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_25

    .line 1705
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    iget-object v2, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4200(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4202(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Ljava/util/List;)Ljava/util/List;

    .line 1708
    :cond_25
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4300(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3e

    .line 1709
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    iget-object v2, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4300(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4302(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Ljava/util/List;)Ljava/util/List;

    .line 1712
    :cond_3e
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    .line 1713
    .local v0, returnMe:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    .line 1714
    return-object v0
.end method

.method public clone()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 3

    .prologue
    .line 1673
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

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
    .line 1645
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountStatus()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    .registers 2

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getAccountStatus()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountStatus()Z
    .registers 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAccountStatus(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4500(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v0

    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 1801
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    invoke-static {v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4500(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->newBuilder(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4502(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    .line 1806
    :goto_2b
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4402(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Z)Z

    .line 1807
    return-object p0

    .line 1804
    :cond_32
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4502(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    goto :goto_2b
.end method

.method public mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1718
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1734
    :cond_6
    :goto_6
    return-object p0

    .line 1719
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1720
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getAccountStatus()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->mergeAccountStatus(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    .line 1722
    :cond_14
    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4200(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1723
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4200(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1724
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4202(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Ljava/util/List;)Ljava/util/List;

    .line 1726
    :cond_34
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4200(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4200(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1728
    :cond_41
    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4300(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1729
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4300(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1730
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4302(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Ljava/util/List;)Ljava/util/List;

    .line 1732
    :cond_61
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4300(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4300(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1742
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1743
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 1747
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1748
    :sswitch_d
    return-object p0

    .line 1753
    :sswitch_e
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    .line 1754
    .local v0, subBuilder:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->hasAccountStatus()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1755
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->getAccountStatus()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    .line 1757
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1758
    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->setAccountStatus(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    goto :goto_0

    .line 1762
    .end local v0           #subBuilder:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v0

    .line 1763
    .local v0, subBuilder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1764
    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->addPlusOne(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    goto :goto_0

    .line 1768
    .end local v0           #subBuilder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    :sswitch_39
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    move-result-object v0

    .line 1769
    .local v0, subBuilder:Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1770
    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->addOperation(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    goto :goto_0

    .line 1743
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_39
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
    .line 1645
    invoke-virtual {p0, p1, p2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

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
    .line 1645
    invoke-virtual {p0, p1, p2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAccountStatus(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4402(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Z)Z

    .line 1795
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->build()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4502(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    .line 1796
    return-object p0
.end method

.method public setAccountStatus(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1786
    if-nez p1, :cond_8

    .line 1787
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1789
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4402(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Z)Z

    .line 1790
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->access$4502(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    .line 1791
    return-object p0
.end method
