.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WordBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;


# instance fields
.field private baselineY_:I

.field private box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

.field private flowWithNext_:Z

.field private hasBaselineY:Z

.field private hasBox:Z

.field private hasFlowWithNext:Z

.field private hasWord:Z

.field private memoizedSerializedSize:I

.field private word_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1950
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    .line 1951
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 1952
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->initFields()V

    .line 1953
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1561
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->word_:Ljava/lang/String;

    .line 1592
    iput-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->flowWithNext_:Z

    .line 1599
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->baselineY_:I

    .line 1630
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->memoizedSerializedSize:I

    .line 1562
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->initFields()V

    .line 1563
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1558
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 1564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->word_:Ljava/lang/String;

    .line 1592
    iput-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->flowWithNext_:Z

    .line 1599
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->baselineY_:I

    .line 1630
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->memoizedSerializedSize:I

    .line 1564
    return-void
.end method

.method static synthetic access$3802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1558
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasWord:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->word_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1558
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1558
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasFlowWithNext:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1558
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->flowWithNext_:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1558
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBaselineY:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1558
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->baselineY_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;
    .registers 1

    .prologue
    .line 1568
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1604
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 1605
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    .registers 1

    .prologue
    .line 1723
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;->access$3600()Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBaselineY()I
    .registers 2

    .prologue
    .line 1601
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->baselineY_:I

    return v0
.end method

.method public getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method public getFlowWithNext()Z
    .registers 2

    .prologue
    .line 1594
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->flowWithNext_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 1632
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->memoizedSerializedSize:I

    .line 1633
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 1653
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 1635
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 1636
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasWord()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1637
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1640
    :cond_18
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1641
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1644
    :cond_28
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasFlowWithNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1645
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getFlowWithNext()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1648
    :cond_38
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBaselineY()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1649
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getBaselineY()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1652
    :cond_48
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->memoizedSerializedSize:I

    move v1, v0

    .line 1653
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getWord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->word_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBaselineY()Z
    .registers 2

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBaselineY:Z

    return v0
.end method

.method public hasBox()Z
    .registers 2

    .prologue
    .line 1586
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox:Z

    return v0
.end method

.method public hasFlowWithNext()Z
    .registers 2

    .prologue
    .line 1593
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasFlowWithNext:Z

    return v0
.end method

.method public hasWord()Z
    .registers 2

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasWord:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1608
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 1610
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1615
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getSerializedSize()I

    .line 1616
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasWord()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1617
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1619
    :cond_11
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBox()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1620
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1622
    :cond_1f
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasFlowWithNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1623
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getFlowWithNext()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1625
    :cond_2d
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->hasBaselineY()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1626
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$WordBox;->getBaselineY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1628
    :cond_3b
    return-void
.end method
