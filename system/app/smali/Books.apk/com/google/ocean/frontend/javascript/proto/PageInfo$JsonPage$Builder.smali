.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3851
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8300()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 1

    .prologue
    .line 3845
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 3

    .prologue
    .line 3854
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;-><init>()V

    .line 3855
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    .line 3856
    return-object v0
.end method


# virtual methods
.method public addClipHighlights(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4481
    if-nez p1, :cond_8

    .line 4482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4484
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4485
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;

    .line 4487
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4488
    return-object p0
.end method

.method public addHighlights(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4300
    if-nez p1, :cond_8

    .line 4301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4303
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4304
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;

    .line 4306
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4307
    return-object p0
.end method

.method public addLinks(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4393
    if-nez p1, :cond_8

    .line 4394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4396
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4397
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;

    .line 4399
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4400
    return-object p0
.end method

.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
    .registers 4

    .prologue
    .line 3900
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    if-nez v1, :cond_c

    .line 3901
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3904
    :cond_c
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_25

    .line 3905
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;

    .line 3908
    :cond_25
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3e

    .line 3909
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;

    .line 3912
    :cond_3e
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_57

    .line 3913
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;

    .line 3916
    :cond_57
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    .line 3917
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    .line 3918
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 3

    .prologue
    .line 3873
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3845
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3845
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

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
    .line 3845
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCcBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getCcBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    return-object v0
.end method

.method public getClipHighlight()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 4427
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getClipHighlight()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    return-object v0
.end method

.method public getStructure()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    .registers 2

    .prologue
    .line 4515
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getStructure()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v0

    return-object v0
.end method

.method public hasCcBox()Z
    .registers 2

    .prologue
    .line 4606
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox()Z

    move-result v0

    return v0
.end method

.method public hasClipHighlight()Z
    .registers 2

    .prologue
    .line 4424
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight()Z

    move-result v0

    return v0
.end method

.method public hasStructure()Z
    .registers 2

    .prologue
    .line 4512
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure()Z

    move-result v0

    return v0
.end method

.method public mergeCcBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4625
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11900(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 4627
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11900(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 4632
    :goto_2b
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4633
    return-object p0

    .line 4630
    :cond_32
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    goto :goto_2b
.end method

.method public mergeClipHighlight(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4443
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10900(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 4445
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10900(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 4450
    :goto_2b
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4451
    return-object p0

    .line 4448
    :cond_32
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    goto :goto_2b
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3922
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3992
    :cond_6
    :goto_6
    return-object p0

    .line 3923
    :cond_7
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasPid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3924
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setPid(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3926
    :cond_14
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSrc()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3927
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setSrc(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3929
    :cond_21
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasImageSolution()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3930
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getImageSolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setImageSolution(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3932
    :cond_2e
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSnippetSrc()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3933
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSnippetSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setSnippetSrc(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3935
    :cond_3b
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSig()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3936
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setSig(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3938
    :cond_48
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3939
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setOrder(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3941
    :cond_55
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3942
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setTitle(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3944
    :cond_62
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasFlags()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3945
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setFlags(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3947
    :cond_6f
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 3948
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 3949
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;

    .line 3951
    :cond_8f
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3953
    :cond_9c
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasVq()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 3954
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getVq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setVq(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3956
    :cond_a9
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 3957
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setContent(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3959
    :cond_b6
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    .line 3960
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 3961
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;

    .line 3963
    :cond_d6
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3965
    :cond_e3
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 3966
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getClipHighlight()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->mergeClipHighlight(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3968
    :cond_f0
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11d

    .line 3969
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 3970
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;

    .line 3972
    :cond_110
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3974
    :cond_11d
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 3975
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getStructure()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->mergeStructure(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3977
    :cond_12a
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasUf()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 3978
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getUf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setUf(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3980
    :cond_137
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasH()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 3981
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setH(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3983
    :cond_144
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasW()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 3984
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setW(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3986
    :cond_151
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox()Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 3987
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getCcBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->mergeCcBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    .line 3989
    :cond_15e
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTextSegment()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3990
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getTextSegment()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setTextSegment(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4001
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_10a

    .line 4005
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4006
    :sswitch_d
    return-object p0

    .line 4011
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setPid(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4015
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setSrc(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4019
    :sswitch_1e
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    .line 4020
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4021
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->addHighlights(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4025
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    :sswitch_2d
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    move-result-object v0

    .line 4026
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4027
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->addLinks(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4031
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setContent(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4035
    :sswitch_45
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setFlags(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4039
    :sswitch_4d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setSig(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4043
    :sswitch_55
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setOrder(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4047
    :sswitch_5d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setTitle(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4051
    :sswitch_65
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    .line 4052
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->hasClipHighlight()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 4053
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->getClipHighlight()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    .line 4055
    :cond_76
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4056
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setClipHighlight(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto :goto_0

    .line 4060
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    :sswitch_81
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    .line 4061
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->hasStructure()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 4062
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->getStructure()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    .line 4064
    :cond_92
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4065
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setStructure(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4069
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    :sswitch_9e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setUf(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4073
    :sswitch_a7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setH(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4077
    :sswitch_b0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setW(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4081
    :sswitch_b9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setVq(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4085
    :sswitch_c2
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    .line 4086
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4087
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->addClipHighlights(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4091
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    :sswitch_d2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setSnippetSrc(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4095
    :sswitch_db
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    .line 4096
    .restart local v0       #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->hasCcBox()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 4097
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->getCcBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    .line 4099
    :cond_ec
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4100
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setCcBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4104
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    :sswitch_f8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setTextSegment(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4108
    :sswitch_101
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->setImageSolution(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    goto/16 :goto_0

    .line 4001
    :sswitch_data_10a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x23 -> :sswitch_2d
        0x3a -> :sswitch_3d
        0x40 -> :sswitch_45
        0x4a -> :sswitch_4d
        0x50 -> :sswitch_55
        0x5a -> :sswitch_5d
        0x62 -> :sswitch_65
        0x6a -> :sswitch_81
        0x72 -> :sswitch_9e
        0x78 -> :sswitch_a7
        0x80 -> :sswitch_b0
        0x92 -> :sswitch_b9
        0xa2 -> :sswitch_c2
        0xaa -> :sswitch_d2
        0xb2 -> :sswitch_db
        0xb8 -> :sswitch_f8
        0xca -> :sswitch_101
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
    .line 3845
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

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
    .line 3845
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStructure(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4531
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11100(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v0

    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 4533
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11100(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    .line 4538
    :goto_2b
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4539
    return-object p0

    .line 4536
    :cond_32
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    goto :goto_2b
.end method

.method public setCcBox(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4612
    if-nez p1, :cond_8

    .line 4613
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4615
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4616
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 4617
    return-object p0
.end method

.method public setClipHighlight(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4430
    if-nez p1, :cond_8

    .line 4431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4433
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4434
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 4435
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4358
    if-nez p1, :cond_8

    .line 4359
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4361
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasContent:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4362
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->content_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;

    .line 4363
    return-object p0
.end method

.method public setFlags(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4268
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasFlags:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4269
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->flags_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I

    .line 4270
    return-object p0
.end method

.method public setH(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4576
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasH:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4577
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->h_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I

    .line 4578
    return-object p0
.end method

.method public setImageSolution(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4166
    if-nez p1, :cond_8

    .line 4167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4169
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasImageSolution:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4170
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->imageSolution_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;

    .line 4171
    return-object p0
.end method

.method public setOrder(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4229
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasOrder:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4230
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->order_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I

    .line 4231
    return-object p0
.end method

.method public setPid(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4124
    if-nez p1, :cond_8

    .line 4125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4127
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasPid:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4128
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->pid_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$8902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;

    .line 4129
    return-object p0
.end method

.method public setSig(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4208
    if-nez p1, :cond_8

    .line 4209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4211
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSig:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4212
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->sig_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;

    .line 4213
    return-object p0
.end method

.method public setSnippetSrc(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4187
    if-nez p1, :cond_8

    .line 4188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4190
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSnippetSrc:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4191
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->snippetSrc_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;

    .line 4192
    return-object p0
.end method

.method public setSrc(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4145
    if-nez p1, :cond_8

    .line 4146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4148
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSrc:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4149
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->src_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$9102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;

    .line 4150
    return-object p0
.end method

.method public setStructure(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4518
    if-nez p1, :cond_8

    .line 4519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4521
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4522
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    .line 4523
    return-object p0
.end method

.method public setTextSegment(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTextSegment:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$12002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4650
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->textSegment_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$12102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I

    .line 4651
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4247
    if-nez p1, :cond_8

    .line 4248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4250
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4251
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->title_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;

    .line 4252
    return-object p0
.end method

.method public setUf(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4555
    if-nez p1, :cond_8

    .line 4556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4558
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasUf:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4559
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->uf_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;

    .line 4560
    return-object p0
.end method

.method public setVq(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4337
    if-nez p1, :cond_8

    .line 4338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4340
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasVq:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4341
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->vq_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$10502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;

    .line 4342
    return-object p0
.end method

.method public setW(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4594
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasW:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z

    .line 4595
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->w_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->access$11702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I

    .line 4596
    return-object p0
.end method
