.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Paragraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;


# instance fields
.field private appearance_:Ljava/lang/String;

.field private continuesFromPrevPage_:Z

.field private continuesOnNextPage_:Z

.field private hasAppearance:Z

.field private hasContinuesFromPrevPage:Z

.field private hasContinuesOnNextPage:Z

.field private memoizedSerializedSize:I

.field private wordbox_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 832
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    .line 833
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 834
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->initFields()V

    .line 835
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->appearance_:Ljava/lang/String;

    .line 444
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;

    .line 457
    iput-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesOnNextPage_:Z

    .line 464
    iput-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesFromPrevPage_:Z

    .line 494
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->memoizedSerializedSize:I

    .line 422
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->initFields()V

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 424
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->appearance_:Ljava/lang/String;

    .line 444
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;

    .line 457
    iput-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesOnNextPage_:Z

    .line 464
    iput-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesFromPrevPage_:Z

    .line 494
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->memoizedSerializedSize:I

    .line 424
    return-void
.end method

.method static synthetic access$1400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasAppearance:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->appearance_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesOnNextPage:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesOnNextPage_:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesFromPrevPage:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesFromPrevPage_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    .registers 1

    .prologue
    .line 428
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 469
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    .registers 1

    .prologue
    .line 587
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;->access$1200()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppearance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->appearance_:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuesFromPrevPage()Z
    .registers 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesFromPrevPage_:Z

    return v0
.end method

.method public getContinuesOnNextPage()Z
    .registers 2

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->continuesOnNextPage_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 496
    iget v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->memoizedSerializedSize:I

    .line 497
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 517
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 499
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getWordboxList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    .line 501
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_10

    .line 504
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
    :cond_23
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasAppearance()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 505
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getAppearance()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 508
    :cond_33
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesOnNextPage()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 509
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getContinuesOnNextPage()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 512
    :cond_43
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesFromPrevPage()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 513
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getContinuesFromPrevPage()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 516
    :cond_54
    iput v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->memoizedSerializedSize:I

    move v3, v2

    .line 517
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method public getWordboxList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->wordbox_:Ljava/util/List;

    return-object v0
.end method

.method public hasAppearance()Z
    .registers 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasAppearance:Z

    return v0
.end method

.method public hasContinuesFromPrevPage()Z
    .registers 2

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesFromPrevPage:Z

    return v0
.end method

.method public hasContinuesOnNextPage()Z
    .registers 2

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesOnNextPage:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getWordboxList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    .line 472
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    .line 474
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getSerializedSize()I

    .line 480
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getWordboxList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    .line 481
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_b

    .line 483
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasAppearance()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 484
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getAppearance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 486
    :cond_2a
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesOnNextPage()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 487
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getContinuesOnNextPage()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 489
    :cond_38
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->hasContinuesFromPrevPage()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 490
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->getContinuesFromPrevPage()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 492
    :cond_47
    return-void
.end method
