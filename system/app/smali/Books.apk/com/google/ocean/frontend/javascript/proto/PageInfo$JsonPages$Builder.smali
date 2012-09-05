.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5009
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$12200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5003
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->buildParsed()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12300()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 1

    .prologue
    .line 5003
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5050
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5051
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5054
    :cond_11
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 3

    .prologue
    .line 5012
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;-><init>()V

    .line 5013
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    .line 5014
    return-object v0
.end method


# virtual methods
.method public addAvailablePid(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5603
    if-nez p1, :cond_8

    .line 5604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5606
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5607
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5609
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5610
    return-object p0
.end method

.method public addPage(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5247
    if-nez p1, :cond_8

    .line 5248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5250
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5251
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5253
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5254
    return-object p0
.end method

.method public addResource(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5535
    if-nez p1, :cond_8

    .line 5536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5538
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5539
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5541
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5542
    return-object p0
.end method

.method public addResourceUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5491
    if-nez p1, :cond_8

    .line 5492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5494
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5495
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5497
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5498
    return-object p0
.end method

.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
    .registers 4

    .prologue
    .line 5058
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    if-nez v1, :cond_c

    .line 5059
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5062
    :cond_c
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_25

    .line 5063
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5066
    :cond_25
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3e

    .line 5067
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5070
    :cond_3e
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_57

    .line 5071
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5074
    :cond_57
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_70

    .line 5075
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5078
    :cond_70
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    .line 5079
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    .line 5080
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 3

    .prologue
    .line 5031
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5003
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5003
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

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
    .line 5003
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineLicenseInfo()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    .registers 2

    .prologue
    .line 5420
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getOfflineLicenseInfo()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v0

    return-object v0
.end method

.method public getReasonContentBlocked()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    .registers 2

    .prologue
    .line 5383
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getReasonContentBlocked()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v0

    return-object v0
.end method

.method public hasOfflineLicenseInfo()Z
    .registers 2

    .prologue
    .line 5417
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasOfflineLicenseInfo()Z

    move-result v0

    return v0
.end method

.method public hasReasonContentBlocked()Z
    .registers 2

    .prologue
    .line 5380
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasReasonContentBlocked()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 5039
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 5084
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5136
    :cond_6
    :goto_6
    return-object p0

    .line 5085
    :cond_7
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 5086
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5087
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5089
    :cond_27
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5091
    :cond_34
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasPrefix()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 5092
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setPrefix(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    .line 5094
    :cond_41
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasDebug()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 5095
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getDebug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setDebug(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    .line 5097
    :cond_4e
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 5098
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    .line 5100
    :cond_5b
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasVolumeVersion()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 5101
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getVolumeVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setVolumeVersion(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    .line 5103
    :cond_68
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContentEncrypted()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 5104
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getContentEncrypted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setContentEncrypted(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    .line 5106
    :cond_75
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasReasonContentBlocked()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 5107
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getReasonContentBlocked()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->mergeReasonContentBlocked(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    .line 5109
    :cond_82
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasOfflineLicenseInfo()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 5110
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getOfflineLicenseInfo()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->mergeOfflineLicenseInfo(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    .line 5112
    :cond_8f
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasStyle()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 5113
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setStyle(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    .line 5115
    :cond_9c
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c9

    .line 5116
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 5117
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5119
    :cond_bc
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5121
    :cond_c9
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f6

    .line 5122
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 5123
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5125
    :cond_e9
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5127
    :cond_f6
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasCurrentPosition()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 5128
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getCurrentPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setCurrentPosition(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    .line 5130
    :cond_103
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5131
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 5132
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;

    .line 5134
    :cond_123
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5145
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_b0

    .line 5149
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5150
    :sswitch_d
    return-object p0

    .line 5155
    :sswitch_e
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    move-result-object v0

    .line 5156
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5157
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->addPage(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5161
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setDebug(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5165
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setPrefix(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5169
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5173
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setCurrentPosition(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5177
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->addAvailablePid(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5181
    :sswitch_45
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setStyle(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5185
    :sswitch_4d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->addResourceUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5189
    :sswitch_55
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setContentEncrypted(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5193
    :sswitch_5d
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    .line 5194
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->hasReasonContentBlocked()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 5195
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->getReasonContentBlocked()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    .line 5197
    :cond_6e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5198
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setReasonContentBlocked(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto :goto_0

    .line 5202
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    :sswitch_79
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    move-result-object v0

    .line 5203
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5204
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->addResource(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto/16 :goto_0

    .line 5208
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    :sswitch_89
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setVolumeVersion(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto/16 :goto_0

    .line 5212
    :sswitch_92
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    .line 5213
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->hasOfflineLicenseInfo()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 5214
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->getOfflineLicenseInfo()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    .line 5216
    :cond_a3
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5217
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->setOfflineLicenseInfo(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    goto/16 :goto_0

    .line 5145
    nop

    :sswitch_data_b0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x1a -> :sswitch_25
        0x22 -> :sswitch_2d
        0x2a -> :sswitch_35
        0x32 -> :sswitch_3d
        0x3a -> :sswitch_45
        0x42 -> :sswitch_4d
        0x48 -> :sswitch_55
        0x52 -> :sswitch_5d
        0x5a -> :sswitch_79
        0x62 -> :sswitch_89
        0x6a -> :sswitch_92
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
    .line 5003
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

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
    .line 5003
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOfflineLicenseInfo(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5436
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasOfflineLicenseInfo()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 5438
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    .line 5443
    :goto_2b
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasOfflineLicenseInfo:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5444
    return-object p0

    .line 5441
    :cond_32
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    goto :goto_2b
.end method

.method public mergeReasonContentBlocked(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5399
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasReasonContentBlocked()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14000(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v0

    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 5401
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14000(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    .line 5406
    :goto_2b
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasReasonContentBlocked:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5407
    return-object p0

    .line 5404
    :cond_32
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    goto :goto_2b
.end method

.method public setContent(Lcom/google/protobuf/ByteString;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5326
    if-nez p1, :cond_8

    .line 5327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5329
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContent:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5330
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->content_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 5331
    return-object p0
.end method

.method public setContentEncrypted(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5368
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContentEncrypted:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5369
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->contentEncrypted_:Z
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5370
    return-object p0
.end method

.method public setCurrentPosition(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5572
    if-nez p1, :cond_8

    .line 5573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5575
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasCurrentPosition:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5576
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->currentPosition_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;

    .line 5577
    return-object p0
.end method

.method public setDebug(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5305
    if-nez p1, :cond_8

    .line 5306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5308
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasDebug:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5309
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->debug_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;

    .line 5310
    return-object p0
.end method

.method public setOfflineLicenseInfo(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5423
    if-nez p1, :cond_8

    .line 5424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5426
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasOfflineLicenseInfo:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5427
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    .line 5428
    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5284
    if-nez p1, :cond_8

    .line 5285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5287
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasPrefix:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$12902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5288
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->prefix_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;

    .line 5289
    return-object p0
.end method

.method public setReasonContentBlocked(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5386
    if-nez p1, :cond_8

    .line 5387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5389
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasReasonContentBlocked:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5390
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    .line 5391
    return-object p0
.end method

.method public setStyle(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5460
    if-nez p1, :cond_8

    .line 5461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5463
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasStyle:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5464
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->style_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$14402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;

    .line 5465
    return-object p0
.end method

.method public setVolumeVersion(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5347
    if-nez p1, :cond_8

    .line 5348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5350
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasVolumeVersion:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z

    .line 5351
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->volumeVersion_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->access$13602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;

    .line 5352
    return-object p0
.end method
